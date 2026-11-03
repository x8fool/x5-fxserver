const fs = require('fs');
const path = require('path');

const outputSqlFile = 'master_migration.sql';
let sqlContent = `-- PostgreSQL Master Migration Script with JSONB & Native Types\n`;
sqlContent += `BEGIN;\n\n`;

const files = fs.readdirSync('.').filter(f => f.endsWith('.json'));

files.forEach(file => {
    const filePath = path.join('.', file);
    const stats = fs.statSync(filePath);
    if (stats.size === 0) return;

    try {
        const rawData = fs.readFileSync(filePath, 'utf8');
        const jsonData = JSON.parse(rawData);
        
        const rows = Array.isArray(jsonData) ? jsonData : [jsonData];
        if (rows.length === 0 || rows[0] === null || typeof rows[0] !== 'object') return;

        const tableName = file.replace(/_\d{4}-\d{2}-\d{2}_\d{6}\.json$/, '');
        const sampleRow = rows[0];
        const columns = Object.keys(sampleRow);

        if (columns.length === 0) return;

        // Inspect rows to determine best-fit SQL types
        sqlContent += `-- Table: ${tableName}\n`;
        sqlContent += `DROP TABLE IF EXISTS "${tableName}" CASCADE;\n`;
        sqlContent += `CREATE TABLE "${tableName}" (\n`;
        
        const colDefinitions = columns.map(col => {
            // Check sample values across rows to guess type
            let sampleVal = sampleRow[col];
            
            // If sample is null, look through other rows for a non-null value
            if (sampleVal === null || sampleVal === undefined) {
                for (let r of rows) {
                    if (r[col] !== null && r[col] !== undefined) {
                        sampleVal = r[col];
                        break;
                    }
                }
            }

            let sqlType = 'TEXT';
            if (typeof sampleVal === 'number') {
                sqlType = Number.isInteger(sampleVal) ? 'BIGINT' : 'NUMERIC';
            } else if (typeof sampleVal === 'boolean') {
                sqlType = 'BOOLEAN';
            } else if (typeof sampleVal === 'object' && sampleVal !== null) {
                sqlType = 'JSONB';
            }

            return `    "${col}" ${sqlType}`;
        });
        
        sqlContent += colDefinitions.join(',\n');
        sqlContent += `\n);\n\n`;

        // Generate INSERT statements with proper type casting/formatting
        rows.forEach(row => {
            const vals = columns.map(col => {
                let val = row[col];
                if (val === undefined || val === null) {
                    return 'NULL';
                }
                if (typeof val === 'object') {
                    // Format for JSONB insertion
                    return `'${JSON.stringify(val).replace(/'/g, "''")}'::jsonb`;
                }
                if (typeof val === 'boolean' || typeof val === 'number') {
                    return String(val);
                }
                // String / Text
                return `'${String(val).replace(/'/g, "''")}'`;
            });

            const quotedCols = columns.map(c => `"${c}"`).join(', ');
            sqlContent += `INSERT INTO "${tableName}" (${quotedCols}) VALUES (${vals.join(', ')});\n`;
        });

        sqlContent += `\n`;
    } catch (err) {
        console.error(`Skipping ${file} due to parse error.`);
    }
});

sqlContent += `COMMIT;\n`;

fs.writeFileSync(outputSqlFile, sqlContent, 'utf8');
console.log(`Successfully generated PostgreSQL JSONB migration: ${outputSqlFile}`);

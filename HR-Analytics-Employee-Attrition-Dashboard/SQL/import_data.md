# Importing Dataset into MySQL

## Database

**Database Name:** `HR_Analytics_DB`

**Table Name:** `hr_analytics`

---

## Dataset Used

- **File:** `HR_Analytics_Cleaned.csv`
- **Source:** Cleaned dataset generated from the Python Data Cleaning phase.

---

## Import Method

The dataset was imported using **MySQL Workbench - Table Data Import Wizard**.

### Steps

1. Open MySQL Workbench.
2. Connect to the MySQL Server.
3. Create the database:

```sql
CREATE DATABASE HR_Analytics_DB;
USE HR_Analytics_DB;
```

4. Right-click on the **HR_Analytics_DB** schema.
5. Select **Table Data Import Wizard**.
6. Browse and select:

```
HR_Analytics_Cleaned.csv
```

7. Enter the table name:

```
hr_analytics
```

8. Verify the automatically detected data types.
9. Click **Next** until the import completes.
10. Verify the imported data:

```sql
SELECT * FROM hr_analytics;
```

---

## Result

- Database Created ✅
- Table Created ✅
- Records Imported: **1470**
- Columns Imported: **38**
- Data Types Automatically Detected by MySQL Workbench

---

## Notes

- The project uses the cleaned dataset generated during the Python Data Cleaning phase.
- MySQL Workbench automatically created the table schema during the import process.
- No manual `CREATE TABLE` statement was required.
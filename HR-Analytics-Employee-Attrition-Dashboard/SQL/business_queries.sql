/*
====================================================
HR Analytics SQL Business Queries
Project : HR Analytics Employee Attrition Dashboard
Database : HR_Analytics_DB
Table : hr_analytics
====================================================
*/

USE HR_Analytics_DB;

-- Query 1: Total Employees

SELECT COUNT(*) AS Total_Employees
FROM hr_analytics;

-- Query 2: Total Active Employees

SELECT COUNT(*) AS Active_Employees
FROM hr_analytics
WHERE Attrition = 'No';

-- Query 3: Employees Left

SELECT COUNT(*) AS Employees_Left
FROM hr_analytics
WHERE Attrition = 'Yes';

-- Query 4: Overall Attrition Rate

SELECT
ROUND(
COUNT(CASE WHEN Attrition='Yes' THEN 1 END)
*100.0/COUNT(*),
2
) AS Attrition_Rate
FROM hr_analytics;

-- Query 5: Average Employee Age

SELECT
ROUND(AVG(Age),2) AS Average_Age
FROM hr_analytics;

-- Query 6: Average Monthly Income

SELECT
ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM hr_analytics;


-- Query 7: Gender Distribution

SELECT
Gender,
COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY Gender
ORDER BY Employee_Count DESC;

-- Query 8: Department Distribution

SELECT
Department,
COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY Department
ORDER BY Employee_Count DESC;

-- =========================================================
-- Query 9 : Department-wise Attrition Rate
-- =========================================================

SELECT
Department,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate
FROM hr_analytics
GROUP BY Department
ORDER BY Attrition_Rate DESC;


-- =========================================================
-- Query 10 : Job Role-wise Attrition Rate
-- =========================================================

SELECT
JobRole,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate
FROM hr_analytics
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;


-- =========================================================
-- Query 11 : Overtime vs Attrition
-- =========================================================

SELECT
OverTime,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate
FROM hr_analytics
GROUP BY OverTime
ORDER BY Attrition_Rate DESC;


-- =========================================================
-- Query 12 : Job Satisfaction vs Attrition
-- =========================================================

SELECT
JobSatisfaction,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate
FROM hr_analytics
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


-- =========================================================
-- Query 13 : Age Group vs Attrition
-- =========================================================

SELECT
AgeGroup,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate
FROM hr_analytics
GROUP BY AgeGroup
ORDER BY Attrition_Rate DESC;


-- =========================================================
-- Query 14 : Income Group vs Attrition
-- =========================================================

SELECT
IncomeGroup,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate
FROM hr_analytics
GROUP BY IncomeGroup
ORDER BY Attrition_Rate DESC;


-- =========================================================
-- Query 15 : Experience Group vs Attrition
-- =========================================================

SELECT
ExperienceGroup,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Attrition_Rate
FROM hr_analytics
GROUP BY ExperienceGroup
ORDER BY Attrition_Rate DESC;

-- =========================================================
-- Query 16 : Work-Life Balance vs Attrition
-- =========================================================

SELECT
    WorkLifeBalance,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr_analytics
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;


-- =========================================================
-- Query 17 : Environment Satisfaction vs Attrition
-- =========================================================

SELECT
    EnvironmentSatisfaction,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr_analytics
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction;


-- =========================================================
-- Query 18 : Business Travel vs Attrition
-- =========================================================

SELECT
    BusinessTravel,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr_analytics
GROUP BY BusinessTravel
ORDER BY Attrition_Rate DESC;


-- =========================================================
-- Query 19 : Marital Status vs Attrition
-- =========================================================

SELECT
    MaritalStatus,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr_analytics
GROUP BY MaritalStatus
ORDER BY Attrition_Rate DESC;


-- =========================================================
-- Query 20 : Education Field vs Attrition
-- =========================================================

SELECT
    EducationField,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr_analytics
GROUP BY EducationField
ORDER BY Attrition_Rate DESC;


-- =========================================================
-- Query 21 : Top 10 Highest Paid Employees
-- =========================================================

SELECT
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome
FROM hr_analytics
ORDER BY MonthlyIncome DESC
LIMIT 10;


-- =========================================================
-- Query 22 : Average Salary by Department
-- =========================================================

SELECT
    Department,
    ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM hr_analytics
GROUP BY Department
ORDER BY Average_Salary DESC;


-- =========================================================
-- Query 23 : Salary Ranking (Window Function)
-- =========================================================

SELECT
    EmployeeNumber,
    Department,
    JobRole,
    MonthlyIncome,
    RANK() OVER(ORDER BY MonthlyIncome DESC) AS Salary_Rank
FROM hr_analytics;


-- =========================================================
-- Query 24 : Highest Paid Employee in Each Department
-- =========================================================

WITH DepartmentSalaryRank AS
(
SELECT
    EmployeeNumber,
    Department,
    JobRole,
    MonthlyIncome,
    RANK() OVER(
        PARTITION BY Department
        ORDER BY MonthlyIncome DESC
    ) AS Dept_Rank
FROM hr_analytics
)

SELECT *
FROM DepartmentSalaryRank
WHERE Dept_Rank = 1;


-- =========================================================
-- Query 25 : Employees Earning Above Average Salary
-- =========================================================

SELECT
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome
FROM hr_analytics
WHERE MonthlyIncome >
(
SELECT AVG(MonthlyIncome)
FROM hr_analytics
);


-- =========================================================
-- Query 26 : Employee Experience Category (CASE)
-- =========================================================

SELECT
    EmployeeNumber,
    YearsAtCompany,

    CASE
        WHEN YearsAtCompany <= 2 THEN 'New Employee'
        WHEN YearsAtCompany <= 5 THEN 'Junior'
        WHEN YearsAtCompany <= 10 THEN 'Mid-Level'
        ELSE 'Senior'
    END AS Experience_Level

FROM hr_analytics;


-- =========================================================
-- Query 27 : Department-wise Average Experience
-- =========================================================

SELECT
    Department,
    ROUND(AVG(TotalWorkingYears),2) AS Avg_Experience
FROM hr_analytics
GROUP BY Department
ORDER BY Avg_Experience DESC;


-- =========================================================
-- Query 28 : Employees Promoted in Last 2 Years
-- =========================================================

SELECT
    EmployeeNumber,
    JobRole,
    YearsSinceLastPromotion
FROM hr_analytics
WHERE YearsSinceLastPromotion <= 2;


-- =========================================================
-- Query 29 : Employees with More Than 10 Years Experience
-- =========================================================

SELECT
    EmployeeNumber,
    JobRole,
    TotalWorkingYears
FROM hr_analytics
WHERE TotalWorkingYears > 10
ORDER BY TotalWorkingYears DESC;


-- =========================================================
-- Query 30 : Final HR Summary
-- =========================================================

SELECT
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) *100.0 / COUNT(*),
        2
    ) AS Attrition_Rate,
    ROUND(AVG(Age),2) AS Average_Age,
    ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM hr_analytics;
-- ==========================================
-- AGGREGATE FUNCTIONS
-- ==========================================

-- Total number of employees

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEES;

-- Total salary of all employees

SELECT SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES;

-- Average salary of employees

SELECT AVG(SALARY) AS AVERAGE_SALARY
FROM EMPLOYEES;

-- Highest salary

SELECT MAX(SALARY) AS HIGHEST_SALARY
FROM EMPLOYEES;

-- Lowest salary

SELECT MIN(SALARY) AS LOWEST_SALARY
FROM EMPLOYEES;

-- Number of employees in each department

SELECT DEPT, COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEES
GROUP BY DEPT;

-- Average salary department-wise

SELECT DEPT, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEPT;

-- Departments having average salary greater than 50000

SELECT DEPT, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEPT
HAVING AVG(SALARY) > 50000;

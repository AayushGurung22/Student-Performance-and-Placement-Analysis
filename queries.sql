CREATE DATABASE student_analysis;
USE student_analysis;
CREATE TABLE students (
    student_id INT,
	Gender VARCHAR(10),
    branch VARCHAR(50),
    cgpa FLOAT,
    attendance FLOAT,
    internships INT,
    coding_score INT,
    communication_score INT,
    placed VARCHAR(10),
    salary_lpa FLOAT
);
SELECT * FROM students;

-- 1. Placement rate by branch
SELECT branch,
ROUND(COUNT(CASE WHEN placed='Yes' THEN 1 END)*100.0/COUNT(*),1) AS placement_rate
FROM students
GROUP BY branch
ORDER BY placement_rate DESC;

-- 2. AVG salary by branch
SELECT branch, ROUND(AVG(salary_lpa),2) as salary_in_lpa
FROM students
WHERE placed="Yes"
GROUP BY branch;

-- 3. Internship impact on placement
SELECT internships, COUNT(*) AS total,
SUM(CASE WHEN placed='Yes' THEN 1 ELSE 0 END) AS placed
FROM students
GROUP BY internships;

-- 4. Top 5 Highest Paid Students
SELECT student_id, salary_lpa
FROM students
ORDER BY salary_lpa DESC
LIMIT 5;

-- 5. AVG Salary by internship count
SELECT internships, ROUND(AVG(salary_lpa),2) as avg_salary
FROM students
WHERE placed="Yes"
GROUP BY internships;

-- 4. Does CGPA Affect Placement?
SELECT 
CASE
WHEN cgpa >= 8 THEN "HIGH"
WHEN cgpa >=6 THEN "MEDIUM"
ELSE "LOW"
END AS cgpa_category,
COUNT(*) AS total,
SUM(CASE WHEN placed="Yes" THEN 1 ELSE 0 END) as placed
FROM students
GROUP BY cgpa_category;

-- 8. Coding Score vs Placement
SELECT 
    CASE 
        WHEN coding_score >= 80 THEN 'High'
        WHEN coding_score >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS coding_level,
    COUNT(*) AS total,
    SUM(CASE WHEN placed='Yes' THEN 1 ELSE 0 END) AS placed
FROM students
GROUP BY coding_level;

-- 9. Gender-wise Placement Rate
SELECT 
    gender,
    ROUND(SUM(CASE WHEN placed='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS placement_rate
FROM students
GROUP BY gender;






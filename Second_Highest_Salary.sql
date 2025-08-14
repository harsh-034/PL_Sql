--Second Highest Salary
--Link Leetcode : https://leetcode.com/problems/second-highest-salary/solutions/7081370/second-highest-salary-by-harshgupta00034-98az/
/* 
Questions 


Table: Employee

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key (column with unique values) for this table.
Each row of this table contains information about the salary of an employee.
 

Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).

The result format is in the following example.

 

Example 1:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
Output: 
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+
Example 2:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
+----+--------+
Output: 
+---------------------+
| SecondHighestSalary |
+---------------------+
| null                |
+---------------------+

*/

SELECT (
  SELECT DISTINCT salary FROM Employee ORDER BY salary DESC
  LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

/* 

Intuition
ther are use in by the way i will use LIMIT and OFFSET becouse offset are use for skip the number

Approach
SELECT DISTINCT salary FROM Employee this line are use for pick unique salary from Employee. then ORDER BY salary DESC it is use for salary short highest to lowest and lest line LIMIT 1 their are use for pick the second row and OFFSET 1 they minds ther are use for skip number because i did use for number 1 are skip

Complexity
Time complexity:
O(n+mlogm)(≈ O(n log n) in worst case)

Space complexity:
O(m) additional space for distinct salaries storage.
No extra space for the final result (only 1 value is returned).

*/


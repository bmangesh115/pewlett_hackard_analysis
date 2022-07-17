-- Create retirement_titles table
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
    ti.title,
    ti.from_date,
    ti.to_date
INTO retirement_titles
FROM employees AS e
    INNER JOIN titles AS ti
    ON (e.emp_no = ti.emp_no)
    WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');


-- Use Dictinct with Orderby to remove duplicate rows from retirement_titles table
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;


-- Create retiring_titles table
SELECT COUNT(title),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;


-- Create mentorship_eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
INTO mentorship_eligibility
FROM employees AS e
    INNER JOIN dept_emp AS de
    ON (e.emp_no = de.emp_no)
    INNER JOIN titles AS ti
    ON (e.emp_no = ti.emp_no)
    WHERE (de.to_date = '9999-01-01')
        AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    ORDER BY e.emp_no;

-- Create mentoring_eligibility titles table
SELECT COUNT(title),
	title
INTO mentoring_eligibility_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT DESC;


-- Create not_retirement_titles table
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
    ti.title,
    ti.from_date,
    ti.to_date
INTO not_retirement_titles
FROM employees AS e
    INNER JOIN titles AS ti
    ON (e.emp_no = ti.emp_no)
    WHERE (e.birth_date > '1955-12-31');


-- Use Dictinct with Orderby to remove duplicate rows from not_retirement_titles table
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO not_retiring_unique_titles
FROM not_retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;


-- Create not_retiring_titles table
SELECT COUNT(title),
	title
INTO not_retiring_titles
FROM not_retiring_unique_titles
GROUP BY title
ORDER BY COUNT DESC;
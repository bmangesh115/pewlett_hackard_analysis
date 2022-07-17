# pewlett_hackard_analysis

# Overview
The purpose is to analyze employee database and plan for retirement, mentoring, and hiring to maintain performance of the company after retirement of many employees.

1. The number of retiring employees by title.
2. The employees eligible for the mentorship program.
3. Analysis to summarize potential next steps.

## Resources
- Data Source: Employee data tables
- Software: PostgreSQL12, pgAdmin4, Visual Studio Code 1.68.1

## Results

### Entity Relationship Diagram (ERD) of data tables

The link to the queries to create data tables with primary and foreign keys.<br>
[Create data tables](/Queries/schema.sql)<br>

### ERD of data tables

<figure>
    <figcaption>ERD showing link between data tables</figcaption>
    <img src="/Images/EmpployeeDB.png" width=826 height=auto
         alt="ERD showing link between data tables">
</figure> <br>

### Number of retiring employees by title 

The link to the queries to analyze retiring employees and mentoring eligibile employees<br>
[Queries to analyze retiring and mentoring employees](/Queries/employee_database_challenge.sql)<br>

<figure>
    <figcaption>Table retirement titles</figcaption>
    <img src="/Images/retirement_titles.png" width=1742 height=auto
         alt="Table retirement titles">
</figure> <br>

<figure>
    <figcaption>Table unique retirement titles</figcaption>
    <img src="/Images/unique_titles.png" width=1187 height=auto
         alt="Table unique retirement titles">
</figure> <br>

<figure>
    <figcaption>Table retiring titles</figcaption>
    <img src="/Images/retiring_titles.png" width=586 height=auto
         alt="Table retiring titles">
</figure> <br>

### Employees eligible for the mentorship program 

<figure>
    <figcaption>Table mentorship eligibility</figcaption>
    <img src="/Images/mentorship_eligibility.png" width=1848 height=auto
         alt="Table mentorship eligibility">
</figure> <br>


### Analysis based on retiring employees and employees eligible for the mentoring program.

1. 72458 total employees eligible for retirement.
2. 7 unique titles employees eligible for retirement.
3. 1549 total employees eligible for the mentoring program.
4. ~2% of retiring employees eligible for the mentoring program.

## Summary 

The link to the queries to analyze not retiring employees by title<br>
[Queries to analyze not retiring employees by title](/Queries/not_retiring_employee_analysis.sql)<br>

<figure>
    <figcaption>Table not retiring titles</figcaption>
    <img src="/Images/not_retiring_titles" width=592 height=auto
         alt="Table not retiring titles">
</figure> <br>

### Analysis based on retiring employees, not retiring employees and employees eligible for the mentoring program.

1. 167666 total employees not retiring.
2. ~30% of employees eligible for retirement.
3. ~1-2% employees eligible for mentoring program per title.
4. Precentage of employees retiring is high compared to employees eligible for mentoring program to train not retiring employees and new hires.
5. The transition plan need to be developed to balance retirement, mentoring, and hiring to maintain the performance of the company without knowledge loss.
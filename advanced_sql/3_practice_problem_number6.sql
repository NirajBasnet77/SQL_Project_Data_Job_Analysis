/*

Practice Problem 6
Create Tables from Other Tables
Question:
Create three tables:
i.   Jan 2023 jobs
ii.  Feb 2023 jobs
iii. Mar 2023 jobs

Foreshadwoing : This will be used in another practice problem below
Hints:
- Use "CREATE TABLE table_name AS" syntax to create your table
- Look at a way to filter out only specific months(EXTRACT)

*/












-- SELECT *
-- FROM job_postings_fact
-- LIMIT 10;





-- SELECT *
-- FROM job_postings_fact
-- WHERE EXTRACT(MONTH FROM job_posted_date) = 1 --matlab january month vanna khojeko
-- LIMIT 10;




-- SELECT *
-- FROM job_postings_fact
-- WHERE EXTRACT(MONTH FROM job_posted_date) = 1; --matlab january month vanna khojeko


CREATE TABLE january_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;


CREATE TABLE february_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;


CREATE TABLE march_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;


SELECT job_posted_date
FROM march_jobs;

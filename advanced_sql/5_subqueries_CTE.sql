/*---USING SUBQUERY, JHAN SPECIFICE VAYERA VANNU PARDA DERIVED TABLE
MEANING SUBQUERY IN THE FROM CLAUSE---*/

-- SELECT *
-- FROM ( -- SubQuery starts from here
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date) = 1
-- ) AS january_jobs;
-- SubQuery ends here



/*----USING CTE------*/

-- WITH january_jobs AS ( -- CTE definiton starts here
--     SELECT *
--     FROM job_postings_fact  
--     WHERE EXTRACT(MONTH FROM job_posted_date) = 1
-- ) -- CTE definition ends here

-- SELECT *
-- FROM january_jobs;






/*--HERE WE ARE FINDING OUT KI KUN COMPANY MA KAAM GARNA DEGREE CHAHIDAINA 
               OR
    THE COMPANIES WHICH DOESNOT REQUIRE ANY DEGREE TO WORK ON ------*/


/*--yo duita muni ko query just experiment gareko or answer mathi ko question
ko solution find garni process ma experiment gareko --*/

-- SELECT 
--         company_id,
--         job_no_degree_mention
--     FROM
--         job_postings_fact
--     WHERE
--         job_no_degree_mention = true


-- SELECT *
-- FROM company_dim




-- This is our solution

-- SELECT name AS company_name 
-- FROM company_dim
-- WHERE company_id IN (
--     SELECT 
--         company_id
--     FROM
--         job_postings_fact
--     WHERE
--         job_no_degree_mention = true
-- )



/*This is our optimized solution after cleaning what needs to be clean
fom the above query*/
-- SELECT 
--     company_id,
--     name AS company_name 
-- FROM 
--     company_dim
-- WHERE company_id IN (
--     SELECT 
--         company_id
--     FROM
--         job_postings_fact
--     WHERE
--         job_no_degree_mention = true
--     ORDER BY
--         company_id
-- )




/*
Find the companies that have the most job openings.
- Get the total number of job postings per company id(job_postings_fact)
- Return the total number of jobs with the company name (company_dim)
*/


/*-----Muni ko code haru experimentation matrai ho, real solution last ma xa-----*/

-- SELECT
--         company_id
-- FROM 
--         job_postings_fact



-- SELECT
--         company_id,
--         COUNT(*)
-- FROM 
--         job_postings_fact
-- GROUP BY company_id




-- WITH company_job_count AS (
--     SELECT
--             company_id,
--             COUNT(*)
--     FROM 
--             job_postings_fact
--     GROUP BY company_id
-- )
-- SELECT *
-- FROM company_job_count



-- This is the Final solution of our question

-- WITH company_job_count AS (
--     SELECT
--             company_id,
--             COUNT(*) AS total_jobs
--     FROM 
--             job_postings_fact
--     GROUP BY 
--         company_id
-- )
-- SELECT 
--     company_dim.name AS company_name,
--     company_job_count.total_jobs
-- FROM 
--     company_dim
-- LEFT JOIN company_job_count ON company_job_count.company_id = company_dim.company_id
-- ORDER BY 
--     total_jobs DESC

-- Sochera her, this query makes perfect sense.
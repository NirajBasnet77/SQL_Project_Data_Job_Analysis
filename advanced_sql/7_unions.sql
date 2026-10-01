-- SELECT *
-- FROM january_jobs;

-- SELECT *
-- FROM february_jobs;


-- SELECT *
-- FROM march_jobs;




/*-----UNDERSTANDING UNION OPERATOR-----*/

-- Get jobs and companies from January
-- SELECT 
--     job_title_short,
--     company_id,
--     job_location
-- FROM 
--     january_jobs

-- UNION

-- -- Get jobs and companies from February

-- SELECT 
--     job_title_short,
--     company_id,
--     job_location
-- FROM 
--     february_jobs

-- UNION --combine another table

-- -- Get jobs and companies from March
-- SELECT  
--     job_title_short,
--     company_id,
--     job_location
-- FROM
--     march_jobs






/*-----UNDERSTANDING UNION ALL OPERATOR-----*/

-- REMEMBER HAMILE DATA ANALYSIS KO JOB MA "UNION ALL" DHERAI USE GARXAU "UNION" VANDA

-- SELECT 
--     job_title_short,
--     company_id,
--     job_location
-- FROM 
--     january_jobs

-- UNION ALL

-- -- Get jobs and companies from February

-- SELECT 
--     job_title_short,
--     company_id,
--     job_location
-- FROM 
--     february_jobs

-- UNION ALL --combine another table

-- -- Get jobs and companies from March
-- SELECT  
--     job_title_short,
--     company_id,
--     job_location
-- FROM
--     march_jobs
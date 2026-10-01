/*
Find the count of the number of remote job postings per skill
  - Display the top 5 skills by their demand in remote jobs
  - Include skill ID, name, and count of postings requiring the skill
  - Find it for data analyst
*/

-- SELECT *
-- FROM skills_job_dim



-- SELECT 
--     COUNT(job_id) AS Total_number_of_jobs,
--     COUNT(skill_id) AS Total_number_of_skills_involvedforoveralljob_in_total
-- FROM skills_job_dim




-- SELECT 
--     COUNT(job_id) AS Total_number_of_jobs,
--     COUNT(skill_id) AS Total_number_of_skills_involvedforoveralljob_in_total
-- FROM skills_job_dim




-- SELECT 
--     COUNT(DISTINCT job_id) AS Total_number_of_jobs,
--     COUNT(DISTINCT skill_id) AS Total_number_of_skills_involvedforoveralljob_in_total
-- FROM skills_job_dim












-- SELECT 
--     job_postings.job_id,
--     skill_id
-- FROM 
--     skills_job_dim AS skills_to_job
-- INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id

/*--we know job_id primary key ho job_postings_fact table ma, so unique hunxa but tei job_id is a 
foreign key in skils_job_dim table so job_id multiple choti huna payo in the skills_job_dim table
rw xa pani. In skills_job_dim table harek euta job_id ko lagi multiple skills xa matlab multiple 
skill_id xa as one job_id represents one job and one skill_id represent one skill, so we say in 
skills_job_dim table job_id tw repeat xa xa because euta job or job_id ko lagi multiple skills(skill_id)
chainxa but skill_id pani repeat xa because eutai skills multiple job ma use hunasakxa. So, in 
skills_job_dim, primary key(or key in general or composite key) is the combination of job_id and skill_id
because dubai ko combination unique hunxa, sochera herda hunxa taile.
                     So yo sql code le aaile samma k diyo vanda, dubai tables (job_postings_fact
and skils_job_dim) batw job_id barabar huni intermediate result diyo jasle garda kun job_id(from
job_postings_fact) ma kun job_id(skills_job_dim) match hunxa, so tyo job_id ko naam or title we 
can get from job_postings_fact and tyo job_id ko corresponding skills we can get ir from 
skills_to_job, so yesle garda euta job title ko lagi overall skills k k chainxa vanera patta lagauna sakiyo 
--*/


-- SELECT *
-- FROM skills_dim;



/*------This is the final solution-------*/

WITH remote_job_skills AS (
SELECT 
    -- job_postings.job_id,
    skill_id,
    COUNT(*) AS skill_count
    -- job_postings.job_work_from_home
FROM 
    skills_job_dim AS skills_to_job
INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id
WHERE 
    job_postings.job_work_from_home = True AND 
    job_postings.job_title_short = 'Data Analyst'
GROUP BY
    skill_id
)
SELECT 
    skills.skill_id,
    skills AS skill_name,
    skill_count
FROM remote_job_skills
INNER JOIN skills_dim AS skills ON skills.skill_id = remote_job_skills.skill_id
ORDER BY
    skill_count DESC
LIMIT 5;


-- Sochera her, it makes perfect sense.

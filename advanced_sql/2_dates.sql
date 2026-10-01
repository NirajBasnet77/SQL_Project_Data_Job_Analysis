-- SELECT '2023-02-19';

-- SELECT '2023-02-19' :: DATE;

-- SELECT 
--     '2023-02-19' :: DATE,
--     '123':: INTEGER,
--     'true'::BOOLEAN,
--     '3.14' :: REAL;
    




-- SELECT  
--     job_title_short AS title,
--     job_location AS location,
--     job_posted_date :: DATE AS date
-- FROM    
--     job_postings_fact





-- SELECT  
--     job_title_short AS title,
--     job_location AS location,
--     job_posted_date DATE
-- FROM    
--     job_postings_fact
-- LIMIT 5;





-- Checking the data type of "job_posted_date" column
-- SELECT pg_typeof(job_posted_date)
-- FROM job_postings_fact
-- LIMIT 1;




-- It shows the TIME ZONE that my system is in
-- SHOW TIME ZONE;
-- SHOW timezone;




/* ---------------UNDERSTANDING AT TIME ZONE with TIMESTAMP WITHOUT TIME ZONE in details------------ */


--Example 1
-- SELECT
--     TIMESTAMP --'2026-08-23 12:00:00'
--     '2023-09-25 17:46:06'
--     AT TIME ZONE 'Asia/Kathmandu';


--what if we don't use the TIMESTAMP keyword?
-- SELECT
--     '2023-09-25 17:46:06'
--     AT TIME ZONE 'Asia/Kathmandu';
--It gives the same output i.e. 2023-09-25 17:46:06


-- SELECT
--     TIMESTAMP '2023-09-25 17:46:06'
--     AT TIME ZONE 'America/New_York';

-- SELECT pg_typeof(
--     TIMESTAMP '2023-09-25 17:46:06'
--     AT TIME ZONE 'America/New_York'
-- )

-- SELECT
--     TIMESTAMP '2023-09-25 17:46:06'
--     AT TIME ZONE 'UTC';

-- SELECT pg_typeof(
--     TIMESTAMP '2023-09-25 17:46:06'
--     AT TIME ZONE 'UTC'
-- )



/*-----Changing the Session Time Zone-----*/
-- SET timezone = 'UTC';
-- SELECT
--     TIMESTAMPTZ '2023-09-25 17:46:06+05:45';





-- SET timezone = 'Asia/Kathmandu';

-- SELECT
--     TIMESTAMPTZ '2023-09-25 17:46:06+05:45';





/*------Typecast(::) operator in postgresql*/

-- SELECT pg_typeof('55'::integer);
-- SELECT pg_typeof('55'::numeric);

-- SELECT pg_typeof('2023-09-25'::date);
-- SELECT pg_typeof(2023-09-25::date);

-- SELECT pg_typeof('2023-09-25 17:46:06'::timestamp);





-- SELECT '55'::numeric;     
-- SELECT pg_typeof('55'::numeric);

-- SELECT pg_typeof(55);
-- SELECT 55::numeric;   
-- SELECT pg_typeof(55::numeric);

-- SELECT pg_typeof(55.5);     
-- SELECT 55.5::integer;     
-- SELECT pg_typeof(55.5::integer);

-- SELECT TRUE::text;       
-- SELECT pg_typeof(TRUE::text);

-- SELECT NULL::integer;    
-- SELECT pg_typeof(NULL::integer);




-- CAST('55' AS numeric);
-- SELECT CAST('55' AS numeric);
-- SELECT pg_typeof(CAST('55' AS numeric));









/*----DISCUSSING TIME DATA TYPE IN POSTGRESQL*/


/*----1. TIME WITHOUT TIME ZONE*/

-- SELECT
--     TIME '17:46:06';

-- SELECT pg_typeof(
--     TIME '17:46:06'
-- )




/*----1. TIME WITH TIME ZONE*/

-- SELECT
--     TIME WITH TIME ZONE '17:46:06+05:45';

-- SELECT pg_typeof(
--     TIME WITH TIME ZONE '17:46:06+05:45'
-- )


/*----DISCUSSING INTERVAL DATA TYPE IN POSTGRESQL*/


-- SELECT
--     INTERVAL '3 days'

-- SELECT pg_typeof(
--     INTERVAL '3 days'
-- )



-- Yesto garda error aauxa because "and" word use garna mildaina.

-- SELECT
--     INTERVAL '2 hours and 30 minutes';

-- SELECT pg_typeof(
--     INTERVAL '2 hours and 30 minutes'
-- );






-- This works perfectly fine 
-- SELECT
--     INTERVAL '2 hours 30 minutes';

-- SELECT pg_typeof(
--     INTERVAL '2 hours 30 minutes'
-- );

-- SELECT
--     INTERVAL '2 hours';

-- SELECT pg_typeof(
--     INTERVAL '2 hours'
-- );

-- SELECT
--     INTERVAL '30 minutes';

-- SELECT pg_typeof(
--     INTERVAL '30 minutes'
-- );

-- SELECT
--     INTERVAL '3 days 2 hours 30 minutes';

-- SELECT pg_typeof(
--     INTERVAL '3 days 2 hours 30 minutes'
-- );




-- SELECT
--     DATE '2023-09-25' + INTERVAL '7 days';

-- SELECT pg_typeof(
--     DATE '2023-09-25' + INTERVAL '7 days'
-- )


-- SELECT
--     TIMESTAMP '2023-09-25 17:00:00'
--     + INTERVAL '2 hours';

-- SELECT pg_typeof(
--         TIMESTAMP '2023-09-25 17:00:00'
--     + INTERVAL '2 hours'
-- );


-- SELECT
--     DATE '2023-09-25'
--     + INTERVAL '7 days 5 hours 30 minutes';

-- SELECT pg_typeof(
--     DATE '2023-09-25'
--     + INTERVAL '7 days 5 hours 30 minutes'
-- );




-- SELECT DATE '2023-09-25' - DATE '2023-09-20';

-- SELECT pg_typeof(
--     DATE '2023-09-25' - DATE '2023-09-20'
-- );

-- SELECT
--     TIMESTAMP '2023-09-25 17:00:00'
--     - TIMESTAMP '2023-09-20 12:00:00';

-- SELECT pg_typeof(
--     TIMESTAMP '2023-09-25 17:00:00'
--     - TIMESTAMP '2023-09-20 12:00:00'
-- );


-- SELECT
--     DATE '2023-01-31' + INTERVAL '1 month';


-- SELECT
--     DATE '2023-01-31' + INTERVAL '30 days';




-- SELECT INTERVAL '-3 days';
-- SELECT INTERVAL '-2 hours';
-- SELECT
--     DATE '2023-09-25'
--     - INTERVAL '7 days';


-- SELECT INTERVAL '2 hours' * 3;
-- SELECT pg_typeof(INTERVAL '2 hours' * 3);

-- SELECT INTERVAL '2 hours' + INTERVAL '30 minutes';








-- SELECT pg_typeof(
--     TIMESTAMP '2023-09-25 17:46:06'
-- );

-- SELECT
--     pg_typeof(
--         TIMESTAMP '2023-09-25 17:46:06'
--         AT TIME ZONE 'Asia/Kathmandu'
--     );

-- SELECT pg_typeof(
--     '2023-09-25 17:46:06'
-- );

-- SELECT pg_typeof(
--     '2023-09-25 17:46:06'
--     AT TIME ZONE 'Asia/Kathmandu'
-- );

-- Experimenting with example 1
-- SELECT
--     TIMESTAMPTZ --'2026-08-23 12:00:00+00'
--     '2023-09-25 17:46:06+00'
--     AT TIME ZONE 'Asia/Kathmandu';


-- SELECT '2023-09-25'::text;
-- SELECT pg_typeof(
--     '2023-09-25'::text
-- )

-- SELECT '2023-09-25'::date;

-- SELECT pg_typeof(
--     '2023-09-25'::date
-- )



-- SELECT pg_typeof('Hello');
-- SELECT pg_typeof('Hello'::text);



-- SELECT pg_typeof(55);
-- SELECT pg_typeof(55.57);

-- SELECT pg_typeof(INT '55');
-- pg_typeof(NUMERIC '55'); --Yesto garda error aauxa but select use garda aaudaina
-- SELECT pg_typeof(NUMERIC '55');

-- Experimenting to understand 'AT TIME ZONE with TIMESTAMP WITHOUT TIME ZONE' better
-- SELECT 
--     job_posted_date AT TIME ZONE 'Asia/Kathmandu'
-- FROM job_postings_fact
-- LIMIT 1;



-- SELECT pg_typeof(100);
-- SELECT pg_typeof(2147483647);
-- SELECT pg_typeof(2147483648);


-- SELECT pg_typeof(NULL::integer);
-- SELECT pg_typeof(NULL::date);
-- SELECT pg_typeof(TIME '17:46:06');


-- SELECT INTEGER 100
-- SELECT pg_typeof(100);
-- SELECT pg_typeof(INTEGER 100);
-- SELECT 100


-- SELECT NUMERIC 100.50
-- SELECT pg_typeof(100.50);
-- SELECT pg_typeof(NUMERIC 100.50);
-- SELECT 100.50


-- SELECT BOOLEAN TRUE
-- SELECT pg_typeof(TRUE);
-- SELECT pg_typeof(BOOLEAN TRUE);
-- SELECT TRUE


-- SELECT BOOLEAN FALSE
-- SELECT pg_typeof(FALSE);
-- SELECT pg_typeof(BOOLEAN FALSE);
-- SELECT FALSE





-- SELECT BOOLEAN 'NULl'
-- SELECT pg_typeof(NULL);
-- SELECT pg_typeof(BOOLEAN NULL);
-- SELECT pg_typeof(BOOLEAN 'NULL');
-- SELECT NULL




/* ------------------------IT gives errors------------------*/

-- NULL::integer;
-- NULL::text;
-- NULL::date;
-- NULL::timestamp;


/*---------But this doesnot----------------------------*/
-- SELECT pg_typeof(NULL::integer);
-- SELECT pg_typeof(NULL::text);
-- SELECT pg_typeof(NULL::date);
-- SELECT pg_typeof(NULL::timestamp);



-- SELECT pg_typeof(
--     TIMESTAMP '2023-09-25 17:46:06'
-- );

-- SELECT
--     TIMESTAMP 
--     '2023-09-25 17:46:06'
 

-- SELECT INTEGER '100'

-- SELECT pg_typeof( 
--     INTEGER '100')

-- SELECT NUMERIC '100.50'
-- SELECT pg_typeof( 
--     NUMERIC '100.50')

-- SELECT BOOLEAN 'TRUE'
-- SELECT pg_typeof( 
--     BOOLEAN 'TRUE')

-- SELECT BOOLEAN 'FALSE'
-- SELECT pg_typeof( 
--     BOOLEAN 'FALSE')






-- SELECT text 'Hello'

-- SELECT pg_typeof( 
--     text 'Hello')

-- SELECT text '2023-09-25 17:46:06'

-- SELECT pg_typeof( 
--     text '2023-09-25 17:46:06')


-- SELECT Timestamp '2023-09-25 17:46:06'

-- SELECT pg_typeof( 
--     Timestamp '2023-09-25 17:46:06')





-- SELECT pg_typeof(17:46:06);


















-- SELECT 
--     TIMESTAMPTZ '2023-09-25 17:46:06+05:45'
--     AT TIME ZONE 'UTC';

-- SELECT pg_typeof(
--     TIMESTAMPTZ '2023-09-25 17:46:06+05:45'
--     AT TIME ZONE 'UTC'
-- );



-- SELECT 
--     TIMESTAMPTZ '2023-09-25 17:46:06+05:45'
--     AT TIME ZONE 'Asia/kathmandu';

-- SELECT pg_typeof(
--     TIMESTAMPTZ '2023-09-25 17:46:06+05:45'
--     AT TIME ZONE 'Asia/kathmandu'
-- );


-- SELECT 
--     TIMESTAMPTZ '2023-09-25 17:46:06+05:45'
--     AT TIME ZONE 'America/New_York';

SELECT pg_typeof(
    TIMESTAMPTZ '2023-09-25 17:46:06+05:45'
    AT TIME ZONE 'America/New_York'
);







-- Experimenting to understand AT TIME ZONE with TIMESTAMP WITHOUT TIME ZONE better

-- SELECT
--     job_posted_date 
-- FROM job_postings_fact
-- LIMIT 1;


-- SELECT
--     pg_typeof(job_posted_date)
-- FROM job_postings_fact
-- LIMIT 1;  


-- SELECT 
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Kathmandu'
-- FROM job_postings_fact
-- LIMIT 1;



-- SELECT pg_typeof(
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Kathmandu'
-- )
-- FROM job_postings_fact
-- LIMIT 1;


-- SELECT  
--     job_title_short AS title,
--     job_location AS location,
--     job_posted_date AT TIME ZONE 'UTC' AS date_time
-- FROM    
--     job_postings_fact
-- LIMIT 5;








-- Checking it
-- SELECT
--     job_posted_date AT TIME ZONE 'UTC' AS utc_interpretation,
--     job_posted_date AT TIME ZONE 'UTC'
--         AT TIME ZONE 'UTC' 
--         AS back_to_utc
-- FROM job_postings_fact
-- LIMIT 1;


   


/*----Yesari table ma vayeko harek columns rw tesko data types display hunxa.---*/

-- SELECT
--     column_name,
--     data_type
-- FROM information_schema.columns
-- WHERE table_name = 'job_postings_fact';









-- SELECT EXTRACT(YEAR FROM job_posted_date)
-- FROM
--     job_postings_fact
-- LIMIT 1;


-- SELECT 
--     EXTRACT(YEAR FROM job_posted_date) AS year
-- FROM
--     job_postings_fact
-- LIMIT 1;






-- SELECT  
--     job_title_short AS title,
--     job_location AS location,
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time 
--     -- UTC and EST ko time difference is 5 hours, UTC is ahead by 5 hours with respect to 
-- FROM    
--     job_postings_fact
-- LIMIT 5;


-- SELECT  
--     job_title_short AS title,
--     job_location AS location,
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
--     EXTRACT(MONTH FROM job_posted_date) AS date_month,
--     EXTRACT(YEAR FROM job_posted_date) AS date_month
-- FROM    
--     job_postings_fact
-- LIMIT 5;


/*
Why do we need EXTRACT, if we actually use it in combination with something like 
GROUP BY function, I could do larger trend analysis with SQL. For example

Lets see we want to look at how job posting is trending from month to month

*/

SELECT
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM    
    job_postings_fact   
WHERE   
    job_title_short = 'Data Analyst'     
GROUP BY    
    month
ORDER BY
    job_posted_count DESC;




SELECT
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM    
    job_postings_fact   
WHERE   
    job_title_short = 'Data Analyst'     
GROUP BY    
    EXTRACT(MONTH FROM job_posted_date)
ORDER BY
    job_posted_count DESC;

/*
Yesle chai out of all the job, Data analyst ko job ko demand chai kati 
xa vanera vanxa or dinxa month to month   
*/ 



/*--------UNDERSTANDING DATE_TRUNC() Function in details----*/

-- SELECT DATE_TRUNC(
--     'year',
--     TIMESTAMP '2025-06-15 14:37:42'
-- );
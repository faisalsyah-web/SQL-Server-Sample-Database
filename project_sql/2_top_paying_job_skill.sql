/*
Pertanyaan: Keterampilan apa saja yang dibutuhkan untuk posisi analis data bergaji tinggi?
- Gunakan 10 posisi Analis Data bergaji tertinggi dari kueri pertama
- Tambahkan keterampilan spesifik yang dibutuhkan untuk posisi ini
- Mengapa? Ini memberikan gambaran detail tentang pekerjaan bergaji tinggi mana yang membutuhkan keterampilan tertentu,
membantu pencari kerja memahami keterampilan mana yang perlu dikembangkan agar sesuai dengan gaji tertinggi.
*/

WITH top_paying_job AS (
    SELECT
        jpf.job_id,
        jpf.job_location,
        cd.name AS company_name,
        jpf.job_title,
        jpf.job_schedule_type,
        jpf.salary_year_avg,
        jpf.job_posted_date::date
    FROM
        job_postings_fact jpf
    LEFT JOIN
        company_dim cd ON cd.company_id = jpf.company_id
    WHERE
        jpf.salary_year_avg IS NOT NULL AND
        jpf.job_title_short = 'Data Analyst' AND
        jpf.job_work_from_home = TRUE
    ORDER BY
        jpf.salary_year_avg DESC
    LIMIT 10
)

SELECT
    tpj.*,
    skills
FROM
    top_paying_job tpj
INNER JOIN skills_job_dim sjd ON tpj.job_id = sjd.job_id
INNER JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
ORDER BY tpj.salary_year_avg DESC;






















[
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "sql"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "python"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "r"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "azure"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "databricks"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "aws"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "pandas"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "pyspark"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "jupyter"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "excel"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "tableau"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "power bi"
  },
  {
    "job_id": 552322,
    "job_location": "Anywhere",
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18",
    "skills": "powerpoint"
  },
  {
    "job_id": 99305,
    "job_location": "Anywhere",
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05",
    "skills": "sql"
  },
  {
    "job_id": 99305,
    "job_location": "Anywhere",
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05",
    "skills": "python"
  },
  {
    "job_id": 99305,
    "job_location": "Anywhere",
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05",
    "skills": "r"
  },
  {
    "job_id": 99305,
    "job_location": "Anywhere",
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05",
    "skills": "hadoop"
  },
  {
    "job_id": 99305,
    "job_location": "Anywhere",
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_location": "Anywhere",
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17",
    "skills": "sql"
  },
  {
    "job_id": 1021647,
    "job_location": "Anywhere",
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17",
    "skills": "crystal"
  },
  {
    "job_id": 1021647,
    "job_location": "Anywhere",
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17",
    "skills": "oracle"
  },
  {
    "job_id": 1021647,
    "job_location": "Anywhere",
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_location": "Anywhere",
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17",
    "skills": "flow"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "sql"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "python"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "go"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "snowflake"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "pandas"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "numpy"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "excel"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "tableau"
  },
  {
    "job_id": 168310,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09",
    "skills": "gitlab"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "sql"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "python"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "azure"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "aws"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "oracle"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "snowflake"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "tableau"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "power bi"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "sap"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "jenkins"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "bitbucket"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "atlassian"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "jira"
  },
  {
    "job_id": 731368,
    "job_location": "Anywhere",
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07",
    "skills": "confluence"
  },
  {
    "job_id": 310660,
    "job_location": "Anywhere",
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05",
    "skills": "sql"
  },
  {
    "job_id": 310660,
    "job_location": "Anywhere",
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05",
    "skills": "python"
  },
  {
    "job_id": 310660,
    "job_location": "Anywhere",
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05",
    "skills": "r"
  },
  {
    "job_id": 310660,
    "job_location": "Anywhere",
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05",
    "skills": "git"
  },
  {
    "job_id": 310660,
    "job_location": "Anywhere",
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05",
    "skills": "bitbucket"
  },
  {
    "job_id": 310660,
    "job_location": "Anywhere",
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05",
    "skills": "atlassian"
  },
  {
    "job_id": 310660,
    "job_location": "Anywhere",
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05",
    "skills": "jira"
  },
  {
    "job_id": 310660,
    "job_location": "Anywhere",
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05",
    "skills": "confluence"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "sql"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "python"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "go"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "snowflake"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "pandas"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "numpy"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "excel"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "tableau"
  },
  {
    "job_id": 1749593,
    "job_location": "Anywhere",
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11",
    "skills": "gitlab"
  },
  {
    "job_id": 387860,
    "job_location": "Anywhere",
    "company_name": "Get It Recruit - Information Technology",
    "job_title": "ERM Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184000.0",
    "job_posted_date": "2023-06-09",
    "skills": "sql"
  },
  {
    "job_id": 387860,
    "job_location": "Anywhere",
    "company_name": "Get It Recruit - Information Technology",
    "job_title": "ERM Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184000.0",
    "job_posted_date": "2023-06-09",
    "skills": "python"
  },
  {
    "job_id": 387860,
    "job_location": "Anywhere",
    "company_name": "Get It Recruit - Information Technology",
    "job_title": "ERM Data Analyst",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184000.0",
    "job_posted_date": "2023-06-09",
    "skills": "r"
  }
]
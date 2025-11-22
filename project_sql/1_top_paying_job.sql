/* 
Pertanyaan : Apa top pekerjaan data analyst yang memiliki gaji tertinggi?
- Identifikasi top 10 pekerjaan data analisis dengan gaji tertinggi yang tersedia remote.
- Fokus pada postingan pekerjaan dengan spesifik gaji. (hilangkan data null/kosong).
- Kenapa? Highlight kesempatan top gaji tertinggi data analysts 
*/

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
LIMIT 10;
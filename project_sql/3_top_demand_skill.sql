/*
    Pertanyaan: Apa saja keterampilan yang paling dibutuhkan oleh analis data?
    - Gabungkan lowongan pekerjaan ke tabel gabungan internal yang serupa dengan kueri 2
    - Identifikasi 5 keterampilan teratas yang paling dibutuhkan oleh analis data.
    - Fokus pada semua lowongan pekerjaan.
    - Mengapa? Menampilkan 5 keterampilan teratas dengan permintaan tertinggi di pasar kerja,
    memberikan wawasan tentang keterampilan yang paling berharga bagi para pencari kerja.
*/

SELECT 
    sd.skills,
    COUNT(sjd.job_id) demand_count
FROM job_postings_fact jpf
INNER JOIN skills_job_dim sjd ON sjd.job_id = jpf.job_id
INNER JOIN skills_dim sd ON sd.skill_id = sjd.skill_id
WHERE
   jpf.job_title_short = 'Data Analyst' AND
   jpf.job_work_from_home = TRUE
GROUP BY 
    sd.skills
ORDER BY
    demand_count DESC
LIMIT 5;
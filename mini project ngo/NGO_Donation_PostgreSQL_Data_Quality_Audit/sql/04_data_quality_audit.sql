SELECT COUNT(*) AS total_records FROM donations_raw;

SELECT COUNT(*) FILTER (WHERE email IS NULL) AS missing_emails,
       ROUND(COUNT(*) FILTER (WHERE email IS NULL) * 100.0 / COUNT(*), 2) AS missing_email_percentage
FROM donations_raw;

SELECT donation_id, COUNT(*) AS record_count
FROM donations_raw
GROUP BY donation_id
HAVING COUNT(*) > 1
ORDER BY record_count DESC;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'donations_raw'
ORDER BY ordinal_position;

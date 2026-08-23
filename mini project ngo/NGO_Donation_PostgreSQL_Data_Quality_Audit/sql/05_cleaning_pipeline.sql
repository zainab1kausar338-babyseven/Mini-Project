TRUNCATE TABLE donations_cleaned;

INSERT INTO donations_cleaned
(donation_id, donor_name, amount, donation_date, payment_method, email, month)
SELECT DISTINCT
    donation_id,
    TRIM(donor_name),
    NULLIF(REGEXP_REPLACE(amount, '[^0-9.]', '', 'g'), '')::NUMERIC(12,2),
    CASE
        WHEN donation_date ~ '^\\d{4}-\\d{2}-\\d{2}$' THEN donation_date::DATE
        WHEN donation_date ~ '^\\d{2}/\\d{2}/\\d{4}$' THEN TO_DATE(donation_date, 'DD/MM/YYYY')
        WHEN donation_date ~ '^\\d{2}-\\d{2}-\\d{4}$' THEN TO_DATE(donation_date, 'DD-MM-YYYY')
        ELSE NULL
    END,
    LOWER(TRIM(payment_method)),
    COALESCE(NULLIF(TRIM(email), ''), 'Unknown'),
    CASE
        WHEN donation_date ~ '^\\d{4}-\\d{2}-\\d{2}$' THEN TO_CHAR(donation_date::DATE, 'YYYY-MM')
        WHEN donation_date ~ '^\\d{2}/\\d{2}/\\d{4}$' THEN TO_CHAR(TO_DATE(donation_date, 'DD/MM/YYYY'), 'YYYY-MM')
        WHEN donation_date ~ '^\\d{2}-\\d{2}-\\d{4}$' THEN TO_CHAR(TO_DATE(donation_date, 'DD-MM-YYYY'), 'YYYY-MM')
        ELSE NULL
    END
FROM donations_raw;

SELECT COUNT(*) AS cleaned_records FROM donations_cleaned;

-- Change the path to your actual CSV location.
COPY donations_raw
FROM 'C:/path/to/ngo_donations_raw.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

SELECT COUNT(*) AS loaded_records FROM donations_raw;

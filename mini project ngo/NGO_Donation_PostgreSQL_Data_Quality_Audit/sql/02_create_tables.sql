DROP TABLE IF EXISTS donations_cleaned;
DROP TABLE IF EXISTS donations_raw;

CREATE TABLE donations_raw (
    donation_id VARCHAR(50), donor_name VARCHAR(150), amount TEXT,
    donation_date TEXT, payment_method VARCHAR(50), email VARCHAR(150)
);

CREATE TABLE donations_cleaned (
    donation_id VARCHAR(50), donor_name VARCHAR(150), amount NUMERIC(12,2),
    donation_date DATE, payment_method VARCHAR(50), email VARCHAR(150), month VARCHAR(7)
);

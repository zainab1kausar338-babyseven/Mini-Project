SELECT payment_method, COUNT(*) AS donation_count,
       SUM(amount) AS total_donations, ROUND(AVG(amount),2) AS average_donation
FROM donations_cleaned
GROUP BY payment_method ORDER BY total_donations DESC;

SELECT month, COUNT(*) AS donation_count, SUM(amount) AS total_donations
FROM donations_cleaned GROUP BY month ORDER BY month;

WITH q AS (
 SELECT PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY amount) q1,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY amount) q3
 FROM donations_cleaned
)
SELECT d.* FROM donations_cleaned d, q
WHERE d.amount > q.q3 + 1.5*(q.q3-q.q1)
ORDER BY d.amount DESC;

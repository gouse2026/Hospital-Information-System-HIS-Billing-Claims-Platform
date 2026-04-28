-- Total claims amount
SELECT SUM(amount) AS total_claims FROM claims;

-- Claims by status
SELECT status, COUNT(*) 
FROM claims 
GROUP BY status;

-- Top providers by claim value
SELECT p.provider_name, SUM(c.amount) total
FROM claims c
JOIN providers p ON c.provider_id = p.provider_id
GROUP BY p.provider_name
ORDER BY total DESC;

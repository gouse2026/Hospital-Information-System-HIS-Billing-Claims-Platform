-- Approval rate
SELECT 
ROUND(
    SUM(CASE WHEN status='APPROVED' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
) AS approval_rate
FROM claims;

-- Average claim amount
SELECT AVG(amount) FROM claims;

-- Daily claims trend
SELECT DATE(created_at), COUNT(*)
FROM claims
GROUP BY DATE(created_at)
ORDER BY DATE(created_at);

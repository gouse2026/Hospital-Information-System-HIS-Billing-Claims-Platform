CREATE VIEW claim_summary AS
SELECT 
    c.claim_id,
    p.name AS patient,
    pr.provider_name,
    c.amount,
    c.status
FROM claims c
JOIN patients p ON c.patient_id = p.patient_id
JOIN providers pr ON c.provider_id = pr.provider_id;

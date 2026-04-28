CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE providers (
    provider_id INT PRIMARY KEY,
    provider_name VARCHAR(100)
);

CREATE TABLE claims (
    claim_id INT PRIMARY KEY,
    patient_id INT,
    provider_id INT,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    created_at TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    claim_id INT,
    paid_amount DECIMAL(10,2),
    paid_date DATE,
    FOREIGN KEY (claim_id) REFERENCES claims(claim_id)
);

-- Create users table
CREATE TABLE users (
    user_id VARCHAR,
    signup_time TIMESTAMP,
    country VARCHAR
);

-- Create events table
CREATE TABLE events (
    event_id VARCHAR,
    user_id VARCHAR,
    event_time TIMESTAMP,
    event_name VARCHAR,
    feature_name VARCHAR,
    session_id VARCHAR,
    duration_ms INTEGER
);

-- Create subscriptions table
CREATE TABLE subscriptions (
    subscription_id VARCHAR,
    user_id VARCHAR,
    start_date DATE,
    end_date DATE,
    plan VARCHAR,
    mrr_amount DECIMAL
);

-- Create nps_responses table
CREATE TABLE nps_responses (
    response_id VARCHAR,
    user_id VARCHAR,
    response_date DATE,
    score INTEGER,
    feedback TEXT
);

-- Create conversions table
CREATE TABLE conversions (
    conversion_id VARCHAR,
    user_id VARCHAR,
    conversion_time TIMESTAMP,
    conversion_type VARCHAR
);

-- Create acquisition_costs table
CREATE TABLE acquisition_costs (
    user_id VARCHAR,
    acquisition_channel VARCHAR,
    cost DECIMAL
);

-- Load CSV data into tables
COPY users FROM 'mock_data/users.csv' (AUTO_DETECT TRUE);
COPY events FROM 'mock_data/events.csv' (AUTO_DETECT TRUE);
COPY subscriptions FROM 'mock_data/subscriptions.csv' (AUTO_DETECT TRUE);
COPY nps_responses FROM 'mock_data/npsResponses.csv' (AUTO_DETECT TRUE);
COPY conversions FROM 'mock_data/conversions.csv' (AUTO_DETECT TRUE);
COPY acquisition_costs FROM 'mock_data/acquisitionCosts.csv' (AUTO_DETECT TRUE);

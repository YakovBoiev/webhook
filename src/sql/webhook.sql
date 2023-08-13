CREATE TABLE IF NOT EXISTS webhook (
        Webhook_id SERIAL PRIMARY KEY,
        Cache_Control VARCHAR,
        Content_Type VARCHAR,
        Date VARCHAR,
        Server VARCHAR,
        Set_Cookie VARCHAR,
        Transfer_Encoding VARCHAR,
        Vary VARCHAR
        );

                CREATE TABLE IF NOT EXISTS webhook (
                Webhook_id SERIAL PRIMARY KEY,
                Cache_Control VARCHAR,
                Content_Encoding VARCHAR,
                Content_Type VARCHAR,
                Date VARCHAR,
                Server VARCHAR,
                Set_Cookie VARCHAR,
                Transfer_Encoding VARCHAR,
                Vary VARCHAR
                );
              
                    INSERT INTO webhook (Server, Content_Type, Transfer_Encoding, Vary, Cache_Control, Date, Set_Cookie, Content_Encoding)
                    VALUES (E'nginx', E'text/html; charset=UTF-8', E'chunked', E'Accept-Encoding', E'no-cache, private', E'Mon, 14 Aug 2023 08:25:54 GMT', E'XSRF-TOKEN=eyJpdiI6InBwd0dUM2hwcjI1OGpWOTcrSVJwWGc9PSIsInZhbHVlIjoiZU5NYitXcEk3Zk84Vk1tL3pDOXpKRWk4aXh2REh6RE5RM2NPY1dseWk3M3dNTm5oWjByUlV3WSttZEdKMTY0SElJMm1iQWhsOXphZEJYNk5HVVhOZkQ2R09KVWlkd1JmTGFmUVJaN2ttUHAvOTlDKy9Uak1paDlLRklCUllFYW0iLCJtYWMiOiJlYTYwM2MxNTI1MGY5M2ExNmNkNWVjYmVkOTVkZTQyYzExY2M1NzlhYTJmNzNiNDljNjdmYWY2ZjE5OWQzNjJlIiwidGFnIjoiIn0%3D; expires=Tue, 15 Aug 2023 08:25:54 GMT; Max-Age=86400; path=/; domain=.webhook.site, webhooksite_session=hkdCUw9eFSXzFZYJv6CBPXozhlX87KvGzwkHIMr4; expires=Tue, 15 Aug 2023 08:25:54 GMT; Max-Age=86400; path=/; domain=.webhook.site; httponly', E'gzip');
                           
                    INSERT INTO webhook (Server, Content_Type, Transfer_Encoding, Vary, Cache_Control, Date, Set_Cookie, Content_Encoding)
                    VALUES (E'nginx', E'text/html; charset=UTF-8', E'chunked', E'Accept-Encoding', E'no-cache, private', E'Mon, 14 Aug 2023 08:25:55 GMT', E'XSRF-TOKEN=eyJpdiI6IkNXVkhiOXcxTFNLeDJZNlNXK3cwbHc9PSIsInZhbHVlIjoiMm9CRTdocWF5dzBPVEdhMGRTdWxZaWpmSlptN0FKRTZKbU5aamlFd3Boa2ZwamFHUGJCaS9NbWZVR1p1VWVPQk4vVERoNklVTHFyUGgxZFZzb0l5TEUzZ1JmV0RGTURhaUFBZ0trY1NQMk1BTUt6dW4zMzZmVG5ZdzhDOVEvVWkiLCJtYWMiOiJkNDgzMzMyMTBlNTMzZjU1OTBkOWE1MWUwYjZiZTk0ZTc2OTcyNDQ5NTc1NGQ3YzI3NzZhZTI1ZGJjZTU1ZjlkIiwidGFnIjoiIn0%3D; expires=Tue, 15 Aug 2023 08:25:55 GMT; Max-Age=86400; path=/; domain=.webhook.site, webhooksite_session=lctYdEFfq1f99LsgpeM0OPKwvMNbUCVzL0cMUYxd; expires=Tue, 15 Aug 2023 08:25:55 GMT; Max-Age=86400; path=/; domain=.webhook.site; httponly', E'gzip');
                           
                    INSERT INTO webhook (Server, Content_Type, Transfer_Encoding, Vary, Cache_Control, Date, Set_Cookie, Content_Encoding)
                    VALUES (E'nginx', E'text/html; charset=UTF-8', E'chunked', E'Accept-Encoding', E'no-cache, private', E'Mon, 14 Aug 2023 08:25:54 GMT', E'XSRF-TOKEN=eyJpdiI6IkxRcU1zbnUybXJLQWd2NndiSng0SlE9PSIsInZhbHVlIjoiS0VaMjd5THpsM0lDamJ1bmZSbVVwQ3BFRXAvRzZoVTZUWmlkSHBBYS9nS1oxVlBRRDE3VzZnTkNuT0lYTHVVcWZQQTRFL09BN1NMKzhMbXFKaktNS2Vsa2NUVFhBdUtwQnhQU0gzUlFKNVRwZnNNR3RKNGEwNjBiMVI3azMwSy8iLCJtYWMiOiJmYjU4MmUyZTVlMWEyZmE3NmI5MGI0MTg5MDE1OTE4YThmYzM2NWJmNmY3NWNjNDkxZTNmNzljMmE1ODA1ZjZhIiwidGFnIjoiIn0%3D; expires=Tue, 15 Aug 2023 08:25:54 GMT; Max-Age=86400; path=/; domain=.webhook.site, webhooksite_session=O4WDOqoiBS3xgGNKA1MxKTlioLSY4BDOJPKhSYYy; expires=Tue, 15 Aug 2023 08:25:54 GMT; Max-Age=86400; path=/; domain=.webhook.site; httponly', E'gzip');
                           
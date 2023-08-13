
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
                       VALUES (E'nginx', E'text/html; charset=UTF-8', E'chunked', E'Accept-Encoding', E'no-cache, private', E'Sun, 13 Aug 2023 17:49:32 GMT', E'XSRF-TOKEN=eyJpdiI6IktGL3pkaEtycXV6V28rWTVJUmgxcHc9PSIsInZhbHVlIjoiWDBOZHpsVGw4VFZ2ajZMZnBaamJEa2pJZWl1d3Z2bzVWTloxbEkyYzVxbFp3SnZqc2FwUEZBbkNDcE9lc2JkQ3hnaTV2NXk3UUk3QWJ5bHVCVmM3MEEydFRLQVpsYWwyZ0xHZ1NlS3J5UFRwNHk3ZzR5ZjhpbVpjQ1B0Nk5FbTkiLCJtYWMiOiJmN2I1ZDFlY2ZhOTY0ZDgzZjNmOTNkNzQ1ZDJhODdhODFjZmU5MjAwM2U3MTE5ZTNkNGNhNDQ5MTIwNWVlNzU4IiwidGFnIjoiIn0%3D; expires=Mon, 14 Aug 2023 17:49:32 GMT; Max-Age=86400; path=/; domain=.webhook.site, webhooksite_session=f9jLStLVjoD2zKznmWxh8Wl3gahXEqqMu4y3r888; expires=Mon, 14 Aug 2023 17:49:32 GMT; Max-Age=86400; path=/; domain=.webhook.site; httponly', E'gzip');
                           
                       INSERT INTO webhook (Server, Content_Type, Transfer_Encoding, Vary, Cache_Control, Date, Set_Cookie, Content_Encoding)
                       VALUES (E'nginx', E'text/html; charset=UTF-8', E'chunked', E'Accept-Encoding', E'no-cache, private', E'Sun, 13 Aug 2023 17:49:32 GMT', E'XSRF-TOKEN=eyJpdiI6Ikl5cTNnbGIvL2szSU0zZGVyUjI3NXc9PSIsInZhbHVlIjoiTzZ3WDUyMEFFeE9adytleXRPd2tkUnFaV0tMeFJZeVlSeGt5c1hSVnJOdG0vNVlWN1NkZDZySnlWRE5SLzExSmUvZFBaVnVxeU9zck5LS0ZTYnVvVmFrQVlYV1Vqb2pwcytMb0NEK3Q3d2pCS0NCM042Sm9JMjAwVUtHVTV2RHciLCJtYWMiOiJjNjRiZGE2YTAyNjhiNzhlYjI2ZjljNDM4ZWRiZTg0ODI0NGZjZGZlMmMwM2NkNTI5Y2U2MzYyYmE0NDBhZDZmIiwidGFnIjoiIn0%3D; expires=Mon, 14 Aug 2023 17:49:32 GMT; Max-Age=86400; path=/; domain=.webhook.site, webhooksite_session=Aw5oeGnBOLzcbgFoyGUzciBNBbJ8XI2esVG0I3Ov; expires=Mon, 14 Aug 2023 17:49:32 GMT; Max-Age=86400; path=/; domain=.webhook.site; httponly', E'gzip');
                           
                       INSERT INTO webhook (Server, Content_Type, Transfer_Encoding, Vary, Cache_Control, Date, Set_Cookie, Content_Encoding)
                       VALUES (E'nginx', E'text/html; charset=UTF-8', E'chunked', E'Accept-Encoding', E'no-cache, private', E'Sun, 13 Aug 2023 17:49:32 GMT', E'XSRF-TOKEN=eyJpdiI6Ilpzbm91ekREc0pZaFhQd3diMzNxdmc9PSIsInZhbHVlIjoiTHl0MmlUY1FpNncxV1hFYnlla3huYlVJUklWNG1nSWVhTThVSU5Gd3Z3RUNvdjhRSGc0aTQxd0JQdkkvTjROaHhzRE9nYUQ0dGR2TjIzYTdqVXgvM0w3OUxVczI5cFRhdXk0U0xKRHB6WkZ4ek5WYUszR0tFK0NkK0ZHSmVHanAiLCJtYWMiOiI5YzhmM2I3NzZmNTM2OGMxNDU2ZjBiOWMxNDM5ZjdhMjg4NTNiMTk5NGVhNzdlZTM5ZWNjODI0ODU1YTFhOTI2IiwidGFnIjoiIn0%3D; expires=Mon, 14 Aug 2023 17:49:32 GMT; Max-Age=86400; path=/; domain=.webhook.site, webhooksite_session=S4IKQ2nbycNuluCBt26z8FmocYHRADx59l7nmjPK; expires=Mon, 14 Aug 2023 17:49:32 GMT; Max-Age=86400; path=/; domain=.webhook.site; httponly', E'gzip');
                           
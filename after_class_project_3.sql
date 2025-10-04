
-- create
CREATE TABLE WEBSITES (
number int,
website_name varchar(25),
website_info varchar(20),
time_ago varchar(6),
viewers int
);

-- insert

INSERT INTO WEBSITES(number,website_name,website_info,time_ago,viewers)
VALUES (1, 'BBC', 'Sports', '2022', 24000);
INSERT INTO WEBSITES(number,website_name,website_info,time_ago,viewers)
VALUES (2, 'Hindustan Times', 'Hackers', '2004', 82000);
INSERT INTO WEBSITES(number,website_name,website_info,time_ago,viewers)
VALUES (3, 'Fox news', 'International news', '2025', 3200);
INSERT INTO WEBSITES(number,website_name,website_info,time_ago,viewers)
VALUES (4, 'Indian Express', 'Hackers', '2021', 300000);
INSERT INTO WEBSITES(number,website_name,website_info,time_ago,viewers)
VALUES (5, 'CBS news', 'Hackers', '2023', 2100);
INSERT INTO WEBSITES(number,website_name,website_info,time_ago,viewers)
VALUES (6, 'Google news', 'International news', '2016', 780000);
INSERT INTO WEBSITES(number,website_name,website_info,time_ago,viewers)
VALUES (7, 'News18', 'Sports', '2018', 9300);
INSERT INTO WEBSITES(number,website_name,website_info,time_ago,viewers)
VALUES (8, 'Times of India', 'Weather', '2024', 56000);


-- fetch

SELECT * FROM WEBSITES;

SELECT website_name , COUNT(*) AS number_of_websites FROM WEBSITES
GROUP BY website_name;

SELECT website_info , COUNT(website_info) FROM WEBSITES
GROUP BY website_info

SELECT website_info, time_ago ,viewers FROM WEBSITES
WHERE time_ago>2000 AND website_info='Hackers' ;

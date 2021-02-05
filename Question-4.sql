----- Question 4 -------------

use project_db;

DROP  table pageview ;

CREATE TABLE pageview (
	domain_code STRING,
	page_title STRING,
	count_views int,
	total_response_size int)
	ROW FORMAT DELIMITED
	FIELDS TERMINATED BY ' '
	TBLPROPERTIES("skip.header.line.count"="0");

CREATE TABLE pageview_table (
	domain_code STRING,
	page_title STRING,
	count_views int,
	total_response_size int)
	ROW FORMAT DELIMITED
	FIELDS TERMINATED BY ' '
	TBLPROPERTIES("skip.header.line.count"="0");

CREATE TABLE apageview (
	domain_code STRING,
	page_title STRING,
	count_views int,
	total_response_size int)
	ROW FORMAT DELIMITED
	FIELDS TERMINATED BY ' '
	TBLPROPERTIES("skip.header.line.count"="0");

CREATE TABLE apageview_table (
	domain_code STRING,
	page_title STRING,
	count_views int,
	total_response_size int)
	ROW FORMAT DELIMITED
	FIELDS TERMINATED BY ' '
	TBLPROPERTIES("skip.header.line.count"="0");


LOAD DATA LOCAL INPATH '/home/raju/projects/mydata/pageviews-20210120-000000' INTO TABLE pageview;

LOAD DATA LOCAL INPATH '/home/raju/projects/mydata/pageviews-20210120-120000' INTO TABLE apageview;

TRUNCATE table pageview_table ;

INSERT into pageview_table 
select * from pageview where domain_code = 'en';

INSERT into apageview_table 
select * from apageview where domain_code = 'en';

drop view pgview;

SELECT * from apageview_table ;

create view pgview as 
select page_title, SUM(apageview_table.count_views) as american_views, SUM(pageview_table.count_views) other_views 
from pageview_table join apageview_table
on pageview_table.page_title = apageview_table.page_title
GROUP by pageview_table.page_title 
sort by american_views DESC;

SELECT * FROM  pgview limit 10;
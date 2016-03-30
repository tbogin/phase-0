
**Commands** 

SELECT * FROM states; -- fetches all data from 'states' table

SELECT * FROM regions; -- fetches all data from 'regions' table

SELECT state_name, population FROM states; -- fetches state name and population from state table

SELECT state_name, population
  ORDER BY population DESC; -- fetches state name and population, ordered from highest-lowest population

SELECT state_name FROM states WHERE region-id = 7;

SELECT state_name, population_density FROM states WHERE population_density > 50
  ORDER BY population_density ASC;
  
SELECT state_name FROM states WHERE population_density BETWEEN 1000000 AND 1500000;

SELECT state_name, region_id 
  ORDER BY region ASC;
  
SELECT FROM state-region WHERE region_name LIKE '%central%';

SELECT states.state_name, regions.region_name FROM states -- select the columns you want FROM the table with the foreign key
INNER JOIN regions ON states.region_id = regions.id -- join table with foreign key with table w/ primary key
ORDER BY region_id ASC; 



**Reflection**

**What are databases for?**
Databases are a structure for storing data in a way that makes data easily searched and accessible.

**What is a one-to-many relationship?**
A one-to-many relationship is when many different entities can be categorized in a different but related entity.

**What is a primary key? What is a foreign key? How can you determine which is which?**
A primary key is an id number unique to a table row. A foreign key corresponds to another table's primary key, but isn't unique.

**How can you select information out of a SQL database? What are some general guidelines for that?**
Use commands such as SELECT, with specifications for what column you're selecting from.

**Commands**

SELECT * FROM state-region -- will fetch all data from state-region table

SELECT id, region_name FROM state-region;

SELECT state_name, population FROM state-region;

SELECT state_name, population
  ORDER BY population DESC;

SELECT * FROM state-region WHERE id = 7;

SELECT state_name, population_density FROM state-region WHERE population_density > 50
  ORDER BY population_density ASC;
  
SELECT state_name FROM state-region WHERE state_name BETWEEN 1000000 AND 1500000;

SELECT state_name, region_id 
  ORDER BY region ASC;
  
SELECT FROM state-region WHERE region_name LIKE '%central%'

Complete 10 next time



**Reflection**

**What are databases for?**
Databases are a structure for storing data in a way that makes data easily searched and accessible.

**What is a one-to-many relationship?**
A one-to-many relationship is when many different entities can be categorized in a different but related entity.

**What is a primary key? What is a foreign key? How can you determine which is which?**
A primary key is an id number unique to a table row. A foreign key corresponds to another table's primary key, but isn't unique.

**How can you select information out of a SQL database? What are some general guidelines for that?**
Use commands such as SELECT, with specifications for what column you're selecting from.
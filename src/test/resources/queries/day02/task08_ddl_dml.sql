SELECT * from Employees;
/*
    CREATE TABLE tableName (
        colName1 dataType constrains,
        colName2 dataType constrains,
        colName3 dataType constrains,
        colName4 dataType constrains
        .....
    );

 */


CReate table loopteam(
    empID INTEGER PRIMARY KEY ,-- this can not to be null and has to be unique
    firstname varchar(30) not null,-- CAN NOT BE NULL
    jobtitle varchar(20) not null,-- CAN NOT BE NULL
    age integer,         -- THERE IS NO CONSTRAIN -- MEANING CAN BE NULL
    salary integer        -- THERE IS NO CONSTRAIN -- MEANING CAN BE NULL
);

SELECT * FROM loopteam;

/*
INSERT INTO tableNAME
 */
 insert into loopteam(empID, firstname, jobtitle, age, salary)
 values (1,'Tom', 'SDET',30,127000);

insert into loopteam(empID, firstname, jobtitle, age, salary)
values (2,'Jame', 'PO',30,120000);

insert into loopteam(empID, firstname, jobtitle, age, salary)
values (3,'Cris', 'SDET',43,124000);

insert into loopteam(empID, firstname, jobtitle, age, salary)
values (4,'Alex', 'SM',30,110000);
commit;

-- You can use this query to add multiple lines of data at the same time.
/*
    INSERT INTO loopteam (empId, firstname, jobtitle, age, salary)
    VALUES ((1, 'Tom', 'SDET', 30, 125000),
            (2, 'Jame', 'PO', 30, 120000));

 */
/*
    UPDATE table_name
	SET column1 = newValue1,
	    column2 = newValue2 ,
	    ...
	WHERE condition;
 */
UPDATE LOOPTEAM
SET SALARY = 155000
WHERE FIRSTNAME = 'Cris';

SELECT * from LOOPTEAM;

UPDATE loopteam
set salary = salary+5000;

UPDATE LOOPTEAM
SET SALARY = SALARY+10000
where JOBTITLE = 'SDET';

/*
    DELETE FROM table_name
	WHERE condition;
 */

 DELETE FROM LOOPTEAM
 where empID = 1;

SELECT * From loopteam;

/*
 ALTER TABLE tableName action;
 */
-- Here I added a new column which had data type as varchar (String) which can have null values as well
 ALTER TABLE LOOPTEAM add gender varchar(20);
SELECT * from loopteam;


-- If we do not have any WHERE contiond in the query, it will update entire column
UPDATE loopteam
set gender = 'Male';


UPDATE loopteam
SET gender = 'Female'
where firstname = 'Alex';


-- UPDATE THE COLUMN NAME
ALTER TABLE loopteam
RENAME COLUMN SALARY TO ANNUAL_SALARY;
SELECT * FROM LOOPTEAM;

--UPDATE the GENDER column name-----> SEX
ALTER TABLE LOOPTEAM
RENAME COLUMN GENDER TO SEX;


-- How to DROP / DELETE the column

ALTER TABLE LOOPTEAM
DROP COLUMN SEX;

SELECT * FROM LOOPTEAM;

-- HOW To RENAME Table
ALTER TABLE loopteam
 RENAME TO agileteam;

SELECT * FROM loopteam; -- This will not work because there is no table with that name anymore
SELECT * FROM AGILETEAM;

-- TRUNCATE

/*
 TRUNCATE table_name;
 */

TRUNCATE TABLE agileteam;
select * from agileteam;


-- DELETE whole table with its structure
/*
 DROP TABLE table_name;
 */

DROP TABLE agileteam;
select *from agileteam;

/*

    Q:  What is the difference between TRUNCATE and DROP?
    A:
        Truncate:   will delete all the table content/data but table will still be there
        Drop:       will delete table itself with data. No table available after this.
 */









--drop table loopteam;



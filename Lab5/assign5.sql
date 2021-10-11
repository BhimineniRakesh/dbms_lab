-- Q 1)

CREATE TABLE marks_sem1 SELECT rollno,math,sci,eng,social,sports FROM student ORDER BY rollno ASC;SELECT * FROM marks_sem1;
ALTER TABLE marks_sem1 ADD PRIMARY KEY(rollno);
describe marks_sem1;

-- Q 2)

CREATE TABLE faculty( NAME VARCHAR(20) , fid CHAR(4), SUBJECT VARCHAR(20), PRIMARY KEY(fid)); 
INSERT INTO faculty VALUES("kakashi",4003,"math");
INSERT INTO faculty VALUES("guy",5002,"sports");
INSERT INTO faculty VALUES("kurenai",5038,"eng");
describe faculty;

-- Q 3)

CREATE TABLE sem1(subj_id CHAR(4),SUBJECT VARCHAR(20),fid CHAR(4),cap INT,campus INT,PRIMARY KEY(subj_id));
INSERT INTO sem1 VALUES(101,"math",4003,60,101);
INSERT INTO sem1 VALUES(102,"sports",5002,70,101);
INSERT INTO sem1 VALUES(105,"eng",5038,60,104);
ALTER TABLE sem1 ADD KEY(fid);
ALTER TABLE sem1 ADD KEY(campus);
describe sem1;

-- Q 4)

ALTER TABLE campus ADD PRIMARY KEY(cid);
describe campus;

-- Q 5)

ALTER TABLE student DROP column math;
ALTER TABLE student DROP column sci;
ALTER TABLE student DROP column eng;
ALTER TABLE student DROP column social;
ALTER TABLE student DROP column sports;
ALTER TABLE student ALTER dob SET DEFAULT "2001-01-10";
ALTER TABLE student ALTER yjoin SET DEFAULT 2019;
ALTER TABLE student ALTER gender SET DEFAULT "M";
ALTER TABLE student ALTER team SET DEFAULT "R";

ALTER TABLE student ADD FOREIGN KEY (rollno) REFERENCES marks_sem1(rollno);



ALTER TABLE student ADD column cid INTEGER;
UPDATE student SET cid=109 WHERE rollno=33;
UPDATE student SET cid=101 WHERE rollno=58;
UPDATE student SET cid=110 WHERE rollno=27; 
UPDATE student SET cid=104 WHERE rollno=56; 
UPDATE student SET cid=104 WHERE rollno=11; 
UPDATE student SET cid=101 WHERE rollno=50; 
UPDATE student SET cid=113 WHERE rollno=7;  
UPDATE student SET cid=107 WHERE rollno=21;
UPDATE student SET cid=109 WHERE rollno=52;
UPDATE student SET cid=109 WHERE rollno=34;
UPDATE student SET cid=110 WHERE rollno=46;
ALTER TABLE student ADD FOREIGN KEY (cid) REFERENCES campus(cid);
describe student;

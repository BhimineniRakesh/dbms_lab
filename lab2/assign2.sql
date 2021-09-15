1.select name,rollno,datediff('2021-09-13',dob)/365.25 as age from student where datediff('2021-09-13',dob)/365.25 >=18 order by age desc;

2.select count(*) as men from student where datediff('2021-12-09',dob)/365.25 >=20 and gender="M";
  select count(*) as women from student where datediff('2021-12-09',dob)/365.25 >=20 and gender="F";

3.select count(rollno) as total_students from student where math>(select avg((math+sci+eng+social+sports)/5) from student);

4.select concat((select sum(cap) from campus where pincode like '6%' or pincode like '5%'),":",(select sum(cap) from campus where pincode like '4%' or pincode like '3%')) as ratio;

5.select name from student where (math+sci+eng+social+sports)/5=(select max((math+sci+eng+social+sports)/5) from student where (math+sci+eng+social+sports)/5 != (select max((math+sci+eng+social+sports)/5) from student));

6.select name, rollno,(math+sci+eng+social+sports)/5 as avg_marks,if(((math+sci+eng+social+sports)/5)>(select avg((math+sci+eng+social+sports)/5)  from student),"High","Low") as score_status from student;

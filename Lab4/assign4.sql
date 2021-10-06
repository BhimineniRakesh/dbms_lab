1. select name from students where team='R' union select name from students where gender='F';.

2.select team,count(name) as students from students group by team;

3.select avg(math) ,team from students where gender='M' group by team;

4.select * from students group by gender,team order by team;

5. select avg(sci) ,team from students group by team order by avg(sci) desc  limit 2;

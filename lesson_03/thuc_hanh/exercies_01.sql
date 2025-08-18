create database Class;

drop database clas;

use class;

create table Teacher(
	Id int,
    name varchar(50),
    age int,
    country varchar(50)
);

use quanlysinhvien ;

select * from student
where status = true;

select * from subject
where Credit < 10;

select s.studentId, s.studentName, c.className
from student s join class c on s.classId = c.classId;

select s.studentId, s.studentName, c.className
from student s join class c on s.classId = c.classId
where c.className = 'A1';

select  s.studentId, s.studentName, sub.subName, m.mark
from student s join Mark m on s.studentId = m.studentId join subject sub on m.subId = sub.subId
where sub.subName = 'CF';

select s.studentName
from student s
where s.studentName like 'h%';

select * from class
where month(startdate) = 12; 

select * from subject
where credit >= 3 and credit <=5;

update student
set classId = 2
where studentId = '1';

select s.studentId, s.studentName, sub.subName, m.mark
from student s join mark m on s.studentId = m. studentId
join subject sub on m.subId = sub.subId
order by m.mark desc, s.studentName asc;








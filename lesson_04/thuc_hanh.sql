use quanlysinhvien;
select * from mark;

select address, count(studentId) as 'So luong hoc vien'
from student
group by address;

select s.studentId, s.studentName, avg(Mark)
from student s join Mark m on s.studentId = m.studentId
group by s.studentId, s.studentName;

select s.studentId, s.studentName, avg(Mark)
from student s join Mark m on s.studentId = m. studentId
group by s.studentId, s.studentName
having avg(Mark) > 15;

select s.studentId, s.studentName, avg(Mark)
from student s join Mark m on s.studentId = m.studentId
group by s.studentId, s.studentName
having avg(Mark) >= all (select avg(Mark) from Mark group by Mark.studentId);
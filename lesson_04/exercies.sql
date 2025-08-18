use quanlysinhvien;

select subId, subName, credit
from subject
where credit = (select max(credit) from subject);

select s.subId, s.subName, m.mark
from subject s
join Mark m on s.subId = m.subId
where m.mark = (select max(mark) from Mark);

select st.studentId, st.studentName, avg(m.mark) as avgMark
from student st
join Mark m on st.studentId = m.studentId
group by st.StudentId, st.StudentName
order by avgMark desc;
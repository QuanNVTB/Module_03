use quanlysinhvien;

insert into class
values (1, 'A1', '2001-12-12', 1);
insert into class
values (2, 'A2', '2025-8-15', 1);
insert into class
values (3, 'B3', current_date, 0); 

insert into student(StudentName, Address, Phone, Status, ClassId)
values ('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into student(StudentName, Address, Status, ClassId)
values ('Hoa', 'Hai Phong',1, 1);
insert into student(StudentName, Address, Phone, Status, ClassId)
values ('Manh', 'HCM', '0123123123', 0, 2);

insert into subject
values(1, 'CF', 5, 1),
  (2, 'C', 6, 1),
  (3, 'HDJ', 5, 1),
  (4, 'RDBMS', 10, 1);
  
insert into mark(SubId, StudentId, Mark, ExamTimes)
  value (1,1,8,1),
	(1,2,10,2),
    (2,1,12,1);
    
select*from student
where status = true;

select*from subject
where Credit < 10;

select S.StudentId, S.StudentName, C.ClassName
from student S join Class C on S.ClassId = C.ClassId
where C.ClassName = 'A1';

select S.StudentId, S.StudentName, Sub.SubName, M.Mark
from Student S join Mark M on S.StudentId = M.StudentId join subject Sub on M.SubId = Sub.SubId
where Sub.SubName = 'CF';
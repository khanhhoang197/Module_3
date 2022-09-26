use QuanLySinhVien;

-- Hiển thị tất cả các thông tin môn học (bảng subjects) có credit lớn nhất.
select * from subjects
where credit = (select max(credit) from subjects);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from subjects
where subID = (
select subID from mark 
where mark = (select MAX(mark) from mark)
);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select *, AVG(mark.Mark) from student
join mark on student.StudentId = mark.StudentId
group by student.StudentId
order by AVG(mark.Mark) desc;


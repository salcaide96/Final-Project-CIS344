create database teachers_portal;
use teachers_portal;
create table students(
	studentId int not null unique auto_increment,
    studentName varchar(45) not null,
    enrolledInCourseId int default 1,
    grade float null,
    primary key (studentId)
);
create table courses(
	courseId int not null unique auto_increment,
    courseName varchar(45) not null,
    primary key (courseId)
);
insert into students (studentName, enrolledInCourseId, grade)
values ("Maria Jozef", 1,90),
		("Linda Jones", 2,89),
        ("John McGrail", 1,98),
        ("Patty Luna", 2,78);
insert into courses (courseName)
values ("Database Design"),
		("Calculus"),
        ("Physics I");

create procedure studentsWithGrade() select s.studentId, s.studentName, s.enrolledInCourseId, s.grade, c.courseId, c.courseName from students left join courses on s.enrolledInCourseId = c.CourseId;
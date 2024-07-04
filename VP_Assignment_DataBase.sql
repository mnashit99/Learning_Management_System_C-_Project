create database Learning_Management_System


create Table STUDENT(
Std_ID char(15) not null,
Std_Name Varchar(25)	not null,
Std_DOB	Date not null,
Std_Semester Numeric(2)	not null,
Std_CNIC char(15) not null,
Std_CGPA Numeric(3,2) not null,
Std_Email Varchar(50),
constraint Std_ID_PK primary key (Std_ID)
)

create table COURSE(
C_ID char(15) not null,
C_Name Varchar(40) not null,
C_Crdt_Hrs Numeric(2) not null,
C_Semester Numeric(2) not null,
C_Instructor Varchar(40) not null,
constraint C_ID_PK primary key (C_ID)
)

create table STD_COURSE_REG(
Index_ID numeric(3) not null,
Std_ID char(15),
C_ID char(15), 
constraint I_ID_PK primary key (Index_ID),
constraint Std_ID_FK foreign key (Std_ID) references STUDENT (Std_ID),
constraint C_ID_FK foreign key (C_ID) references COURSE (C_ID)
)


create table ASSESMENT(
Std_ID char(15),
C_ID char(15),
A_SM Numeric(4,2) not null,
A_FM Numeric(4,2) not null,
A_Status VarChar(5) not null,
constraint Std_ID_A_FK foreign key (Std_ID) references STUDENT (Std_ID),
constraint C_ID_A_FK foreign key (C_ID) references COURSE (C_ID)
)

insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0002-BSCS-21','Ahsan','2000-02-02','4','35202-6843124-9','3.35','ahsanzia2@gmail.com')
insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0008-BSCS-21','Hamza Ahmad Mirza','2000-03-02','4','35202-6843444-9','3.23','ham2@gmail.com')
insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0029-BSCS-21','Syed Momin Haider','2000-04-02','4','35202-1343124-9','3.35','smh2@gmail.com')
insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0035-BSCS-21','Mesum Raza','2000-05-02','4','35102-6123324-9','3.15','mr2@gmail.com')
insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0038-BSCS-21','Rehan Rajpoot','2000-09-18','4','35404-3453124-9','3.00','rs2@gmail.com')
insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0041-BSCS-21','Absar Ali Tariq','2000-06-02','4','35602-1232124-9','3.09','aat2@gmail.com')
insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0044-BSCS-21','Moeez Ahmad Cheema','2000-07-02','4','35232-4234124-9','3.15','mac2@gmail.com')
insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0047-BSCS-21','MNA','2002-02-26','4','34601-6843132-5','2.95','mna3@gmail.com')
insert into STUDENT(Std_ID, Std_Name, Std_DOB, Std_Semester, Std_CNIC, Std_CGPA, Std_Email)
values('0050-BSCS-21','Shahzaib Ghani Kamboh','2000-08-02','4','35202-2345165-9','3.55','sgk2@gmail.com')


insert into COURSE(C_ID,C_Name,C_Crdt_Hrs,C_Semester,C_Instructor)
values('CSDC-001','Programming Fundamentals','3','1','Sir Yahya Khurram')
insert into COURSE(C_ID,C_Name,C_Crdt_Hrs,C_Semester,C_Instructor)
values('CSDC-002','IICT','3','1','Sir Salahuddin Khokhar')
insert into COURSE(C_ID,C_Name,C_Crdt_Hrs,C_Semester,C_Instructor)
values('CSDC-003','Object-Oriented Programming','3','2','Sir Dr Atif Ishaq')
insert into COURSE(C_ID,C_Name,C_Crdt_Hrs,C_Semester,C_Instructor)
values('CSDC-004','Data Structure and Algorithm','3','3','Madam Asma Kanwal')
insert into COURSE(C_ID,C_Name,C_Crdt_Hrs,C_Semester,C_Instructor)
values('CSDC-005','CO&AL','3','3','Sir Muhammad Hafeez')
insert into COURSE(C_ID,C_Name,C_Crdt_Hrs,C_Semester,C_Instructor)
values('CSDC-006','Theory of Automata','3','4','Sir Dr Atif Ishaq')


insert into ASSESMENT(Std_ID, C_ID, A_SM, A_FM, A_Status)
values('0002-BSCS-21','CSDC-001','35','45','PASS')
insert into ASSESMENT(Std_ID, C_ID, A_SM, A_FM, A_Status)
values('0008-BSCS-21','CSDC-001','22','25','FAIL')
insert into ASSESMENT(Std_ID, C_ID, A_SM, A_FM, A_Status)
values('0029-BSCS-21','CSDC-001','38','37','PASS')
insert into ASSESMENT(Std_ID, C_ID, A_SM, A_FM, A_Status)
values('0038-BSCS-21','CSDC-001','41','40','PASS')
insert into ASSESMENT(Std_ID, C_ID, A_SM, A_FM, A_Status)
values('0002-BSCS-21','CSDC-002','35','45','PASS')
insert into ASSESMENT(Std_ID, C_ID, A_SM, A_FM, A_Status)
values('0008-BSCS-21','CSDC-002','32','25','PASS')
insert into ASSESMENT(Std_ID, C_ID, A_SM, A_FM, A_Status)
values('0029-BSCS-21','CSDC-002','35','34','PASS')
insert into ASSESMENT(Std_ID, C_ID, A_SM, A_FM, A_Status)
values('0038-BSCS-21','CSDC-002','26','24','FAIL')


insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('1','0002-BSCS-21','CSDC-001')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('2','0008-BSCS-21','CSDC-001')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('3','0029-BSCS-21','CSDC-001')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('4','0035-BSCS-21','CSDC-001')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('5','0038-BSCS-21','CSDC-001')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('6','0041-BSCS-21','CSDC-001')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('7','0044-BSCS-21','CSDC-001')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('8','0047-BSCS-21','CSDC-001')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('9','0050-BSCS-21','CSDC-001')

insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('10','0002-BSCS-21','CSDC-002')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('11','0008-BSCS-21','CSDC-002')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('12','0029-BSCS-21','CSDC-002')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('13','0035-BSCS-21','CSDC-002')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('14','0038-BSCS-21','CSDC-002')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('15','0041-BSCS-21','CSDC-002')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('16','0044-BSCS-21','CSDC-002')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('17','0047-BSCS-21','CSDC-002')
insert into STD_COURSE_REG(Index_ID,Std_ID, C_ID)values('18','0050-BSCS-21','CSDC-002')

--delete from STD_COURSE_REG where Std_ID='0053-BSCS-21'and C_ID='CSDC-002'
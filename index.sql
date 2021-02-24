CREATE DATABASE Hospital
USE Hospital
USE master

drop database hospital

 create table departments (
 dept_id int identity(1001, 1) primary key,
 dept_name varchar(50),
 );

 insert into departments values ('Gynaecology'), ('Surgery'), ('Paediatrics'), ('Ophtamology'), ('Damartology'),
('Accounting'), ('Records'), ('Logistics'), ('Neurology'), ('General Medicine'), ('Lab Science'),
('Psychiatrics'), ('Emergency'), ('Laundry and Cleaning'), ('Pharmacy'), ('ICT'), ('Human Resources'),
('Oncology'), ('Cosmetic Medicine');

select * from departments;
drop table departments;

 create table Head_of_departments (
 HOD_id int identity(1, 1) primary key,
 level varchar(10),
 job_title varchar(30),
 );

insert into Head_of_departments values ('Level 10', 'Supervisor'), ('Level 12', 'Supervisor'), ('Level 10', 'Supervisor'),
('Level 16', 'Senior Supervisor'), ('Level 15', 'Supervisor'), ('Level 16', 'Senior Supervisor'), ('Level 14', 'Supervisor'),
('Level 11', 'Supervisor'), ('Level 13', 'Supervisor'), ('Level 12', 'Supervisor'), ('Level 11', 'Supervisor'),
('Level 12', 'Supervisor'), ('Level 16', 'Senior Supervisor'), ('Level 17', 'Senior Supervisor'), ('Level 10', 'Supervisor'),
('Level 18', 'Top Supervisor'), ('Level 10', 'Supervisor'), ('Level 11', 'Supervisor'), ('Level 15', 'Supervisor'), 
('Level 16', 'Senior Supervisor');

select * from Head_of_departments;
drop table head_of_departments;
 

 create table employees (
 emp_id int identity(5001, 1) primary key,
 dept_id int,
 first_name varchar (20) NOT NULL, 
 Last_name varchar(20) NOT NULL,
 dob date NOT NULL,
 salary int,
 gender char(1) NOT NULL, 
 emp_date date,
 qualification varchar(30),  
 phone_number varchar (15),
 Hod_id int,
 constraint fk_dept_id foreign key (dept_id) references departments (dept_id),
 constraint fk_Hod_id foreign key (Hod_id) references Head_of_departments (Hod_id),
 constraint ck_gender CHECK (gender in ('M','F'))
 );

 insert into employees values (1003, 'Hakeem', 'Yusuf', '1972-04-25', 25000000, 'M', '2015-02-10', 'Consultant', '08033969156', 14),
(1002, 'Jide', 'Oyedepo', '1980-02-20', 2500000, 'M', '2018-02-10', 'MBBS', '08054376253', NULL),
(1018, 'Jude', 'Chukwuemeka', '1965-01-20', 3000000, 'M', '2015-02-10', 'Consultant', '08033969156', NULL),
(1002, 'Isiak', 'Oloyede', '1973-04-14', 50000000, 'M', '1990-12-01', 'consultant', '08023934155', 13),
(1001, 'Mariam', 'Adewole', '1970-08-15', 25000000, 'F', '2010-10-25', 'Consultant', '08119691560', 20),
(1011, 'Aminat', 'Yusuf', '1989-04-14', 1500000, 'F', '2019-01-20', 'Trainee', '08092836273', NULL),
(1012, 'Joseph', 'Kashogi', '1985-12-19', 7000000, 'M', '2017-02-10', 'Consultant', '08062543567', 6),
(1018, 'Augustina', 'Uzodinma', '1960-04-14', 95000000, 'F', '1995-02-19', 'Chief consultant', '09023969254', 16),
(1010, 'Segun', 'Michael', '1975-04-14', 20000000, 'M', '2010-02-12', 'Consultant', '08133969556', 4),
(1010, 'Sodiq', 'Abdulrahman', '1982-04-24', 250000000, 'M', '2015-02-10', 'MBBS', '09026353748', NULL),
(1011, 'Evelyn', 'Odigue', '1995-04-19', 7000000, 'F', '2005-10-05', 'BSC', '07033969156', 9),
(1006, 'Fatimoh', 'Shehu', '1987-09-16', 1500000, 'F', '2015-06-25', 'HND', '07028362739', NULL),
(1007, 'Fikayo', 'Adedoja', '1994-05-19', 800000, 'M', '2012-07-13', 'NCE', '09023396153', NULL),
(1007, 'Patrick', 'Dada', '1992-04-15', 5000000, 'M', '2002-01-30', 'BSC', '08062339656', 7),
(1008, 'David', 'Olaogun', '1980-04-14', 500000, 'M', '2000-02-10', 'SSCE', '08022969105', NULL),
(1008, 'Adewale', 'Ishabiyi', '1983-04-14', 450000, 'M', '2013-02-10', 'SSCE', '09011969726', 1),
(1007, 'Basirat', 'Aderogba', '1978-12-27', 250000, 'F', '2015-02-15', 'HND', '08133969956', NULL),
(1016, 'Haruna', 'Usman', '1986-06-16', 1200000, 'M', '2008-05-20', 'OND', '07033924356', NULL),
(1017, 'Victoria', 'Gbolagade', '1973-08-24', 7500000, 'F', '2010-02-10', 'BSC', '08045968756', 12),
(1006, 'Makinde', 'Ajimobi', '1969-11-17', 250000000, 'M', '2009-11-18', 'HND', '07025969156', NULL),
(1018, 'Abdullah', 'Abdulrahman', '1975-02-20', 17000000, 'M', '2000-02-10', 'Consultant', '08023376253', NULL),
(1003, 'Ekate', 'Udoh', '1985-01-20', 5000000, 'F', '2015-02-10', 'Nursing', '08033932456', NULL),
(1001, 'Jonathan', 'Usman', '1964-04-14', 350000000, 'M', '1993-12-01', 'Nursing', '08051984155', NULL),
(1001, 'Mutmainah', 'Suleija', '1989-08-15', 12000000, 'F', '2014-10-25', 'Nursing', '08012691560', NULL),
(1012, 'Maxwel', 'Okewu', '1969-04-14', 8900000, 'M', '10-01-1998', 'Nursing', '08022836273', NULL),
(1016, 'Peter', 'Adebowale', '1985-12-19', 7000000, 'M', '2017-02-10', 'BSC', '08035543567', 19),
(1003, 'Anna', 'Igbinedon', '1980-05-18', 9500000, 'F', '1995-02-19', 'Nursing', '09023969254', NULL),
(1002, 'Oluwatobiloba', 'Salawu', '1992-04-14', 4500000, 'M', '2010-02-10', 'Nursing', '08156969556', NULL),
(1014, 'Temitope', 'Aboderin', '1991-12-10', 550000, 'F', '2015-02-10', 'HND', '07015453748', NULL),
(1007, 'Chinyere', 'Adadevon', '1994-07-20', 250000, 'F', '2015-10-10', 'SSCE', '08033962345', NULL),
(1015, 'Joshua', 'Onuh', '1982-05-29', 7000000, 'M', '2017-02-10', 'BSC', '08032933567', 13),
(1018, 'Nice', 'Aienosheon', '1980-12-29', 9500000, 'F', '1998-10-05', 'Nursing', '09023961234', NULL),
(1010, 'Olakunle', 'Yusuf', '1992-04-14', 4500000, 'M', '2010-02-10', 'Nursing', '08156969556', NULL),
(1014, 'Oluwatomisin', 'Babajide', '2000-12-10', 550000, 'F', '2015-02-10', 'SSCE', '07015453748', NULL),
(1006, 'Aishah', 'Adedigba', '1989-02-09', 2500000, 'F', '2019-10-02', 'HND', '08108962345', NULL)

select * from employees;
drop table employees;
select COUNT(*) FROM employees

 create table doctors (
 doc_id int identity(10001, 1) primary key,
 emp_id int,
 constraint fk_emp_id foreign key (emp_id) references employees (emp_id)
 );

 insert into doctors values (5001), (5002), (5003), (5004), (5005), (5007), (5008), (5009), (5010), (5026)

 select * from doctors;
 drop table doctors;


 create table nurses (
 nurse_id int identity(401,1) primary key,
 emp_id int,
 dept_name varchar(50),
 constraint fk_emp_id_nurse foreign key (emp_id) references employees (emp_id),
 );

 insert into nurses values (5022, 'Paediatrics'), (5023, 'Gynaecology'), (5024, 'Gynaecology'), (5025, 'Psychiatrics'), 
 (5027, 'Paediatrics'), (5028, 'Surgery'), (5032, 'Oncology'), (5033, 'General Medicine');
 
 select * from nurses;
 drop table nurses;
 
 create table emp_addresses (
 emp_add_id int identity (2000, 1) primary key,
 emp_id int,
 emp_add_name varchar(100) NOT NULL,
 city varchar (20),
 state varchar (15),
 country varchar (20),
 constraint fk_emp_id_add foreign key (emp_id) references employees (emp_id) 
 );

 insert into emp_addresses values (5001, '5, Oladosu Adedapo street, Felele, Challenge', 'Ibadan', 'Oyo', 'Nigeria'),
 (5002, '3, Anjorin street, Alausa', 'Ikeja', 'Lagos', 'Nigeria'),
 (5003, '1, Kuto road', 'Abeokuta', 'Ogun', 'Nigeria'),
 (5004, '25, Olorunsogo street, Gaa-Akanbi', 'Ilorin', 'Kwara', 'Nigeria'),
 (5005, '20, London street, Gabi area', 'Abuja', 'FCT', 'Nigeria'),
 (5006, '12, Mbadinuju way', 'Oweri', 'Imo', 'Nigeria'),
 (5007, '10, Audu Attah way', 'Lokoja', 'Kogi', 'Nigeria'),
 (5008, '12, Okija street', 'Awka', 'Anambra', 'Nigeria'),
 (5009, 'Okrika express way, GRA', 'Aba', 'Abia', 'Nigeria'),
 (5010, '30, Osimawe street', 'Akure', 'Ondo', 'Nigeria'),
 (5011, 'House 5 Fateru estate, Ajinde area', 'Ibadan', 'Oyo', 'Nigeria'),
 (5012, '12, Dauda Oseni street, Ilasamaja', 'Isolo', 'Lagos', 'Nigeria'),
 (5013, 'Plot 5, Olanrewaju Shopping complex, Bodija', 'Ibadan', 'Oyo', 'Nigeria'),
 (5014, 'Olowo tin fowo shanu shopping complex, Iwo road', 'Ibadan', 'Oyo', 'Nigeria'),
 (5015, 'Plot 224, Solomon way, Garki', 'Abuja', 'FCT','Nigeria'),
 (5016, '5, Apatuma street, Agatu', 'Makurdi', 'Benue', 'Nigeria'),
 (5017, '25, Philip Johnson street, Philemon', 'Jos', 'Plateau', 'Nigeria'),
 (5018, 'Plot 24, Tambuwal street', 'Sokoto', 'Sokoto', 'Nigeria'),
 (5019, 'Usman dan fodio way, Kangiwa', 'Argungun', 'Kebbi', 'Nigeria'),
 (5020, '10, University way, Bosso street', 'Minna', 'Niger', 'Nigeria'),
 (5021, '5, Boko haram street, University way', 'Maiduguri', 'Bornu', 'Nigeria'),
 (5022, 'House 15, Post office area, Olorunsogo', 'Ilorin', 'Kwara', 'Nigeria'),
 (5023, '50, Soun Ogunlola street, Ibarapa', 'Ogbomoso', 'Oyo', 'Nigeria'),
 (5024, '25, Ufot ekaete street', 'Uyo', 'Akwa-ibom', 'Nigeria'),
 (5025, '25, Auchi polytechnic way', 'Auchi', 'Edo', 'Nigeria'),
 (5026, 'Plot 10, Igbinedion street', 'Calabar', 'Cross river', 'Nigeria'),
 (5027, '10, chevron petroloeum company way', 'Portharcout', 'Rivers', 'Nigeria'),
 (5028, 'House 2 Plot 5, PTDF office street', 'Yenagoa', 'Bayelsa', 'Nigeria'),
 (5029, '12, Baba Suntai street', 'Jalingo', 'Taraba', 'Nigeria'),
 (5030, '20, Abiam ikot way, University street', 'Abakaliki', 'Ebonyi', 'Nigeria'),
 (5031, '95, Okota main road', 'Isolo', 'Lagos', 'Nigeria'),
 (5032, '12, Sauara Akande close, off ring road', 'Ibadan', 'Oyo', 'Nigeria'),
 (5033, '35 Oba Adeshida road, Ikere junction', 'Ado-Ekiti', 'Ekiti', 'Nigeria'),
 (5034, '12, Gidan kwano way, University area', 'Minna', 'Niger', 'Nigeria'),
 (5035, '60 Felele straight main road, Felele-Challenge', 'Ibadan', 'Oyo', 'Nigeria')

 select * from emp_addresses
 drop table emp_addresses

 create table bill (
 pat_bill_id varchar (10) primary key,
 payment_date date,
 amount_due int
 );

 insert into bill values ('A001', '2019-05-12', 25600), ('A002', '2018-12-10', 33200), ('A003', '2020-02-21', 123200),
 ('A004', '2019-10-21', 40600), ('A005', '2018-11-15', 3500), ('A006', '2020-01-30', 112600), ('A007', '2019-07-31', 23800), 
 ('A008', '2015-12-25', 70600), ('A009', '2017-05-23', 15920), ('A010', '2018-10-13', 25600), ('A011', '2019-05-12', 35600), 
 ('A012', '2018-12-10', 33200), ('A013', '2020-02-21', 103500),('A014', '2019-10-21', 40600), ('A015', '2018-11-15', 3500), 
 ('A016', '2020-01-30', 125600), ('A017', '2019-07-31', 23800), ('A018', '2015-12-25', 70600), ('A019', '2017-05-23', 15920), 
 ('A020', '2018-10-13', 25600), ('A021', '2019-05-12', 25600), ('A022', '2018-12-10', 33200), ('A023', '2020-02-21', 123500), 
 ('A024', '2019-10-21', 40600), ('A025', '2018-11-15', 3500), ('A026', '2020-01-30', 125600),('A027', '2019-07-31', 23800), 
 ('A028', '2015-12-25', 70600), ('A029', '2017-05-23', 15920), ('A030', '2018-10-13', 25600)

 select * from bill;
 drop table bill;

 create table patients (
 patient_id int identity(6001,1) primary key,
 doc_id int,
 nurse_id int,
 bill_id varchar(10),
 gender char(1),
 age int,
 first_name varchar(15),
 last_name varchar (15),
 height varchar (5),
 weight varchar (5),
 diagnosis varchar (20),
 phone_number varchar(15),
 genotype varchar(5),
 blood_group varchar (5),
 constraint fk_doc_id foreign key (doc_id) references doctors (doc_id),
 constraint fk_nurse_id foreign key (nurse_id) references nurses (nurse_id),
 constraint fk_bill_id foreign key (bill_id) references bill (pat_bill_id),
 constraint chk_gender check (gender in ('M','F'))
 );

 insert into patients values (10001, 401, 'A001', 'F', 30, 'Iyaniwura', 'Awonbiowo', '5.5m', '60kg', 'Pregnant', '08054326754', 'AS', 'O+'),
 (10002, 402, 'A002', 'F', 60, 'Idowu', 'Johnson', '6.2m', '56kg', 'Cancer', '08034827754', 'AA', 'AB+'),
 (10004, 403, 'A003', 'F', 50, 'Christiana', 'Chukwueze', '6.5m', '70kg', 'Diabetes', '07050326754', 'AA', 'AB-'),
 (10005, 404, 'A004', 'M', 45, 'Alex', 'Ekwueme', '5.9m', '55kg', 'Thyphoid', '08030911864', 'SS', 'A+'),
 (10006, 405, 'A005', 'F', 49, 'Ibrahim', 'Saberedowo', '6.5m', '67kg', 'Malaria', '08070540754', 'AC', 'O-'),
 (10007, 401, 'A006', 'M', 90, 'Olusegun', 'Obasanjo', '5.8m', '60kg', 'Old age', '08023467540', 'AA', 'AB-'),
 (10008, 402, 'A007', 'M', 45, 'Martins', 'Gbayan', '5.2m', '65kg', 'Dysentry', '08054326754', 'AS', 'O+'),
 (10009, 403, 'A008', 'F', 56, 'Emmanuel', 'Bundega', '7.5m', '72kg', 'Constipation', '08054326754', 'AS', 'O+'),
 (10010, 404, 'A009', 'F', 36, 'Bruno', 'Alves', '6.9m', '60kg', 'Thyphoid', '08054326754', 'AS', 'O+'),
 (10001, 405, 'A010', 'M', 75, 'Muhammad', 'Buhari', '6.5m', '560kg', 'Old age', '07033426754', 'AS', 'AB+'),
 (10003, 405, 'A011', 'F', 60, 'Beyonce', 'Knowles', '6.2m', '56kg', 'Cancer', '08034827754', 'AA', 'AB+'),
 (10002, 404, 'A012', 'F', 50, 'Maria', 'Sharapova', '6.5m', '70kg', 'Diabetes', '07050326754', 'AA', 'AB-'),
 (10004, 403, 'A013', 'M', 45, 'Anthony', 'Joshua', '5.9m', '55kg', 'Thyphoid', '08030911864', 'SS', 'A+'),
 (10005, 402, 'A014', 'F', 49, 'Mutmainah', 'Aderogba', '6.5m', '67kg', 'Malaria', '08070540754', 'AC', 'O-'),
 (10006, 401, 'A015', 'M', 90, 'Michael', 'Adewale', '5.8m', '60kg', 'Old age', '08023467540', 'AA', 'AB-'),
 (10007, 401, 'A016', 'M', 45, 'Christiano', 'Ronaldo', '5.5m', '60kg', 'Pregnant', '08054326754', 'AS', 'O+'),
 (10008, 402, 'A017', 'F', 56, 'Aishat', 'Makinwa', '5.5m', '60kg', 'Pregnant', '08054326754', 'AS', 'O+'),
 (10009, 403, 'A018', 'F', 36, 'Oluwatosin', 'Ayinikaye', '5.5m', '60kg', 'Pregnant', '08054326754', 'AS', 'O+'),
 (10010, 404, 'A019', 'M', 75, 'Taiwo', 'Ajewole', '6.5m', '560kg', 'Old age', '07033426754', 'AS', 'AB+'),
 (10003, 405, 'A020', 'F', 60, 'Elizabeth', 'Anyanwu', '6.2m', '56kg', 'Cancer', '08034827754', 'AA', 'AB+'),
 (10001, 401, 'A021', 'F', 50, 'Victoria', 'Douglas', '6.5m', '70kg', 'Diabetes', '07050326754', 'AA', 'AB-'),
 (10002, 402, 'A022', 'M', 45, 'Odion', 'Ighalo', '5.9m', '55kg', 'Thyphoid', '08030911864', 'SS', 'A+'),
 (10004, 403, 'A023', 'F', 49, 'Faizah', 'Ibrahim', '6.5m', '67kg', 'Malaria', '08070540754', 'AC', 'O-'),
 (10005, 404, 'A024', 'M', 90, 'Adeyemi', 'OShinbajo', '5.8m', '60kg', 'Old age', '08023467540', 'AA', 'AB-'),
 (10006, 405, 'A025', 'M', 45, 'Maruf', 'Mustapha', '5.5m', '60kg', 'Pregnant', '08054326754', 'AS', 'O+'),
 (10007, 405, 'A026', 'F', 56, 'Khadija', 'Ogungbe', '5.5m', '60kg', 'Pregnant', '08054326754', 'AS', 'O+'),
 (10008, 404, 'A027', 'F', 36, 'Justina', 'Okorafo', '5.5m', '60kg', 'Pregnant', '08054326754', 'AS', 'O+'),
 (10009, 403, 'A028', 'M', 55, 'Kazeem', 'Buhari', '6.5m', '560kg', 'Diabetes', '07033426754', 'AS', 'AB+'),
 (10010, 402, 'A029', 'M', 38, 'Chukwudi', 'Nkokelonye', '6.5m', '560kg', 'Ulcer', '07033426754', 'AS', 'AB+'),
 (10001, 401, 'A030', 'M', 42, 'Peter', 'Olawepo', '6.5m', '560kg', 'Tuberculosis', '07033426754', 'AS', 'AB+')

 select * from patients;
 drop table patients;

 create table patient_addresses (
 pat_add_id int identity (1000001, 1) primary key,
 pat_id int,
 emp_add_name varchar(100),
 city varchar (20),
 state varchar (20),
 country varchar (20),
 email varchar (50),
 constraint fk_pat_id foreign key (pat_id) references patients (patient_id) 
 );

 insert into patient_addresses values (6001, '10, Adegboye elumelu street, Elewura Challenge', 'Ibadan', 'Oyo', 'Nigeria', 'awonbiowo2015@yahoo.com'),
 (6002, '5, Alex Usifo street, Eleyele', 'Ibadan', 'Oyo', 'Nigeria', 'idpepe@gmail.com'), (6016, '5, Alex Usifo street, Eleyele', 'Ibadan', 'Oyo', 'Nigeria', 'chrity.chuks@gmail.com'),
 (6003, '21, Omobola Johnson, Bodija', 'Ibadan', 'Oyo', 'Nigeria', NULL), (6017, 'lane 5 Kuto road, Abeokuta', 'Abeokuta', 'Ogun', 'Nigeria', 'ibrosaber@gmail.com'),
 (6004, '10, Mashood Abiola way, Ring road', 'Ibadan', 'Oyo', 'Nigeria', 'alexdope@yahoo.com'), (6018, '25 University way, Ojo', 'Ibadan', 'Oyo', 'Nigeria', 'ibrosabe@yahoo.com'),
 (6005, 'Plot 5 Olubadan street, Molete', 'Ibadan', 'Oyo', 'Nigeria', NULL), (6019, 'House 12 main road, Ire-akari estate', 'Ibadan', 'Oyo', 'Nigeria', 'martins2000@gmail.com'),
 (6006, '25, Oni and sons way, Moniya', 'Ibadan', 'Oyo', 'Nigeria', NULL), (6020, '25 Mbadinuju crescent, Alimosho street', 'Ikeja', 'Lagos', 'Nigeria', 'bruno.alves@gmail.com'),
 (6007, '32 Alake street, Odo-ona', 'Ijebu-ode', 'Ogun', 'Nigeria', 'mbuhari@gmail.com'), (6021, 'Plot 5 Olubadan street, Mapo hall area', 'Ibadan', 'Oyo', 'Nigeria', 'beyoncescope@gmail.com'),
 (6008, 'lane 5 Kuto road, Abeokuta', 'Abeokuta', 'Ogun', 'Nigeria', 'mariasharap@yahoo.com'), (6022, 'lane 5 Kuto road, Abeokuta', 'Abeokuta', 'Ogun', 'Nigeria', 'anthonyjosh@gmail.com'),
 (6009, 'House 12 main road, Ire-akari estate', 'Ibadan', 'Oyo', 'Nigeria', NULL), (6023, '21, Omobola Johnson, Bodija', 'Ibadan', 'Oyo', 'Nigeria', 'michaelade@gmail.com'),
 (6010, '25 Mbadinuju crescent, Alimosho street', 'Ikeja', 'Lagos', 'Nigeria', 'cr7ronaldo@yahoo.com'), (6024, 'Adegboye elumelu strret, Elewura Challenge', 'Ibadan', 'Oyo', 'Nigeria', 'aishat.makinwa@gmail.com'),
 (6011, '10 Mike Anthony way', 'Shagamu', 'Ogun', 'Nigeria', NULL), (6025, '10 Mike Anthony way', 'Shagamu', 'Ogun', 'Nigeria', 'taiwo420@gmail.com'),
 (6012, '60 Abimbola way, Felele', 'Ibadan', 'Oyo', 'Nigeria', NULL), (6026, 'Plot 5 Olubadan street, Mapo hall area', 'Ibadan', 'Oyo', 'Nigeria', 'victorialdoug2005@yahoo.com'),
 (6013, '25 University way, Ojo', 'Ibadan', 'Oyo', 'Nigeria', 'odionighalo@gmail.com'), (6027, '25, Oni and sons way, Moniya', 'Ibadan', 'Oyo', 'Nigeria', 'faizahbabe@gmail.com'),
 (6014, '1 Mobolaji johnson street', 'Isolo', 'Lagos', 'Nigeria', 'yemioshin@yahoo.com'), (6028, '21, Omobola Johnson, Bodija', 'Ibadan', 'Oyo', 'Nigeria', NULL),
 (6015, '25 Olunlade street, Tanke', 'Ilorin', 'Kwara', 'Nigeria', 'qazibuhari@gmail.com'), (6029, '25 Olunlade street, Tanke', 'Ilorin', 'Kwara', 'Nigeria', 'justinokoro@gmail.com'),
 (6030, 'Plot 5 Olubadan street, Mapo hall area', 'Ibadan', 'Oyo', 'Nigeria', 'peroashosha@gmail.com');

 select * from patient_addresses;
 drop table patient_addresses;

 create table ward (
 room_id varchar(5) primary key,
 pat_id int,
 admitted_date date,
 discharge_date date,
 constraint fk_pat_id_ward foreign key (pat_id) references patients (patient_id)
 );

 insert into ward values ('R10',6003, '2019-11-15', '2020-01-10'), ('R2', 6004, '2020-02-15', NULL),
 ('R5', 6026, '2005-11-19', '2006-12-10'), ('R15', 6016, '2015-01-30', '2015-02-10'), ('R1', 6006, '2020-02-24', NULL),
 ('R3', 6023, '1990-12-19', '1991-02-19'), ('R6', 6013, '2011-06-20', '2011-06-25'), ('R7', 6011, '2017-08-25', '2017-12-10'),
 ('R4', 6016, '2019-04-10', '2020-06-20'), ('R8', 6008, '2000-09-19', '2001-11-10'), ('R9', 6022, '2012-05-12', '2012-06-13'),
 ('R11', 6026, '2019-08-15', '2019-10-10'), ('R12', 6023, '2019-02-17', '2020-01-20'), ('R13', 6006, '2020-02-29', NULL),
 ('R14', 6013, '2020-01-18', NULL), ('R16', 6003, '2009-03-10', '2010-01-10'), ('R17', 6004, '2020-02-25', NULL),
 ('R18', 6011, '2019-11-25', NULL), ('R19', 6022, '2016-04-13', '2017-10-15'), ('R20', 6008, '2020-01-01', NULL)

select * from ward
drop table ward;


--SQL query that shows the sum of salary per department
 select dept_id, sum(salary) as salary_sum
 from employees
 group by dept_id;

 --A query that shows each department salary and then the total Sum of all salaries
 select  dept_id, sum(salary) as Salary_sum from employees
 group by rollup (dept_id)


--To show the average of salary by departments
 select dept_id, avg(salary) 'Average Salary' from employees group by dept_id


--To get specific record from the employees table
select * from employees where dept_id  in ('1001','1002','1003','1004','1005','1006');

select * from employees where dept_id  not in ('1001','1002','1003','1004','1005','1006') order by first_name;

--A query that checks whether an employee is a medical staff
 select emp_id, first_name, Last_name, iif (emp_id='5018', 'Medical Staff', 'Non Medical Staff') Remark from employees

 
--Working with date functions
--To get the age of the employees
SELECT datediff (yy, dob, getdate() ) AS 'Age' FROM employees;


--To get the month and year of joining the hospital
select emp_id, first_name, last_name, datename (mm, emp_date) + ', ' + convert (varchar, datepart (yyyy, emp_date) ) 
as 'Joining' from employees;


--To get employees year of service
SELECT emp_id, first_name, last_name, DATEDIFF (year, emp_date, getdate() ) 'Year of Service' 
FROM employees;

 
--To get the number of days patient was admitted
declare @duration date
select @duration = discharge_date from ward
if (@duration != NULL)
begin
	SELECT pat_id, room_id, DATEDIFF (day, admitted_date, discharge_date) AS 'Admission Days' FROM ward;
end
begin
	SELECT pat_id, room_id, DATEDIFF (day, admitted_date, getdate() ) AS 'Admission Days' FROM ward;
end


--To limit the query result
select top 4 * from employees order by salary;

select top 4 emp_id, first_name from employees order by salary;

select * from employees order by salary, first_name offset 5 rows fetch next 6 rows only;

select DISTINCT qualification from employees;

--Join Keywords
select emp_id, first_name, last_name, dept_name, hod_id from employees join departments on employees.dept_id = departments.dept_id;


--Right join
select emp_id, first_name, last_name, dept_name, hod_id from employees right outer join departments 
on employees.dept_id = departments.dept_id;


--Full join
select emp_id, first_name, last_name, dept_name, hod_id from departments full outer join employees 
on employees.dept_id = departments.dept_id;


--Joining three tables together
select e.emp_id, first_name, last_name, qualification, d.dept_name, d.dept_id, city, state from employees e join departments d
on e.dept_id = d.dept_id
join emp_addresses l on e.emp_id = l.emp_id;


--To identify employees who are the head of departments
select e.emp_id, first_name + ' ' + last_name as 'Full Name', dept_name, job_title, 'Head of ' + dept_name AS 'Managers'  
from employees e 
join departments d on e.dept_id = d.dept_id
join head_of_departments h on e.hod_id = h.hod_id


--Using replicate function
select replicate('Dr ', 1) + last_name + ' ' + first_name as fullname, qualification from employees
where qualification in ('MBBS', 'Consultant', 'Chief consultant');


select replicate('Mrs ', 1) + last_name + ' ' + first_name as fullname, gender from employees
where gender = 'F'; 


--To generate abbreviated names for the employees
select left (first_name, 1) + '.' + last_name, phone_number, emp_add_name from employees e join emp_addresses a on e.emp_id = a.emp_id;


--To virtually auto generate email address for the employees
select first_name + ' ' + last_name as 'Full Name', phone_number, 'email' = last_name + '.' + first_name + '@' + 'niithospital.com', emp_add_name,
city, state, country
FROM employees e join emp_addresses a on e.emp_id = a.emp_id;


--To place the employees in order of their salary using RANK() function
SELECT emp_id, first_name + ' ' + last_name 'Full Name', salary, rank() OVER (ORDER BY salary DESC) as 'Salary Ratings' FROM employees;


--To project the name of the employees formally, using IIF construct
SELECT emp_id, first_name, last_name, gender, qualification, iif (qualification in ('MBBS', 'Consultant', 'Chief consultant'), 'Dr. ' + last_name, 
iif (qualification like ('Nursing'), 'Nurse ' + first_name,
iif (gender like ('F'), 'Mrs. ' + last_name, 'Mr. ' + last_name))) AS 'Formal Name'
FROM employees;


--SUBQUERIES
--To get the number of employees living in Ibadan
 select first_name, last_name from employees where emp_id 
 in (select emp_id from emp_addresses where city = 'Ibadan');


--A query to show Newly admitted Patients to the hospital not more than a week ago
 select * from patients where patient_id 
 in (select pat_id from ward where admitted_date >= getdate() - 7)

 --To check for a condition
 if exists 
 (select * from departments where dept_name = 'Dentistry')
 begin
	select * from departments where dept_name = 'Dentistry'
 end
 else
	insert into departments values ('Dentistry');
 go

select * from departments
 --To get the departments where nurses are working
 SELECT * FROM departments WHERE dept_id
 in (select dept_id from employees where emp_id 
 in (select emp_id from employees where qualification = 'Nursing')); 
 

--VIEWS
create view vw_patient_details
as select patient_id, first_name, last_name, age, height, [weight], room_id, pat_bill_id, amount_due, diagnosis, 
pat_add_name + ', ' + city + ', ' + [state] 'Address'
from patients p join patient_addresses a on p.patient_id = a.pat_id join bill b on b.pat_bill_id = p.bill_id
join ward w on w.pat_id = p.patient_id; 


--To alter the view created
alter view vw_patient_details (PATIENT_ID, [NAME], SURNAME, AGE, HEIGHT, [WEIGHT], WARD, RECEIPT_NO, TOTAL_AMOUNT, DISEASE, [ADDRESS])
as select patient_id, first_name, last_name, age, height, [weight], room_id, pat_bill_id, amount_due, diagnosis, 
pat_add_name + ', ' + city + ', ' + [state] 
from patients p join patient_addresses a on p.patient_id = a.pat_id join bill b on b.pat_bill_id = p.bill_id
join ward w on w.pat_id = p.patient_id 

select * from vw_patient_details
drop view vw_patient_details


--Creating another view
create view vw_emp_details (Employee_Number, Name, Surname, Age, Departments, Designation, Salary, Patient_Name, Disease, Contact, Full_Address)
as select e.emp_id, e.first_name, e.last_name, datediff (yy, dob, getdate() ), dept_name, job_title, salary, p.first_name + ' ' + p.last_name, 
diagnosis, p.phone_number, emp_add_name + ',' + city + ',' + state + ',' + country + '.' 
from employees e
join emp_addresses l on e.emp_id = l.emp_id
join departments d on e.dept_id = d.dept_id
join head_of_departments h on e.hod_id = h.hod_id
join doctors doc on e.emp_id = doc.emp_id
join patients p on p.doc_id = doc.doc_id

select * from vw_emp_details;
drop view vw_emp_details


--To populate a table from another table
select emp_id, first_name, last_name, gender, phone_number into employee from employees

select * from employee
drop table employee

select patient_id, first_name, last_name, gender, phone_number into patient from patients

select * from patient
drop table patient


--To turn on the identity
set identity_insert employee on
set identity_insert patient on


--To merge employee and patient table
merge employee t
using patient s
on (t.emp_id = s.patient_id)
when matched
then update set
t.first_name = s.first_name,
t.last_name = s.last_name,
t.gender = s.gender, 
t.phone_number = s.phone_number
when not matched by target
then insert (emp_id, first_name, last_name, gender, phone_number)
values (s.patient_id, s.first_name, s.last_name, s.gender, s.phone_number)
when not matched by source
then delete;


--To turn off the identity again
set identity_insert products off


 --To update a record
update employee set last_name = 'Ogunferanmi' where emp_id = 6001;


--Some ddl queries
alter table employee alter column first_name varchar(30) not null;

alter table employee add email varchar (50);

alter table patients add constraint df_age default 50 for age


--To deactivate a constarint on employee table
alter table employees
nocheck constraint ck_gender


--To activate the constraint again
alter table employees
with check check constraint ck_gender


--Disable all table constraints
alter table employee nocheck constraint all;


--Enable all table constraints
alter table employee check constraint all;


--To delete a constaint completely
alter table employees drop constraint ck_gender;
alter table patients drop constraint fk_doc_id;

--To drop columns/column
alter table employee drop column first_name, email;

alter table patient drop column last_name;


--To remove specific record from table patient
delete from patient where first_name = 'Idowu';


--To delete all records from table patient
truncate table patient;

--To rename a column
sp_rename 'patient.gender', 'sex';

--To Check information about a table
sp_columns employee;

select * from information_schema.columns where table_name = 'employees';

sp_help employee;


--To check table integrity
SELECT
OBJECT_NAME(parent_object_id) AS 'Tables',
name AS 'Constraint Name',
is_disabled,
is_not_trusted
FROM sys.foreign_keys
UNION
SELECT
OBJECT_NAME(parent_object_id),
name,
is_disabled,
is_not_trusted
FROM sys.check_constraints;


DROP TABLE if exists dbo.employees
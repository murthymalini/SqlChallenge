CREATE TABLE Departments (
    Dept_No Varchar(5)   NOT NULL,
    Dept_Name Varchar(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Employees (
    Emp_No Int   NOT NULL,
    Birth_Date Date   NOT NULL,
    First_Name Varchar(30)   NOT NULL,
    Last_Name Varchar(30)   NOT NULL,
    Gender Varchar(1)   NOT NULL,
    Hire_Date Date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Dept_Emp (
    Emp_No Int   NOT NULL,
    Dept_No Varchar(30)   NOT NULL,
    From_Date Date   NOT NULL,
    To_Date Date   NOT NULL
);

CREATE TABLE Dept_Manager (
    Dept_No Varchar(5)   NOT NULL,
    Emp_No Int   NOT NULL,
    From_Date Date   NOT NULL,
    To_Date Date   NOT NULL
);

CREATE TABLE Salaries (
    Emp_No Int   NOT NULL,
    Salary Int   NOT NULL,
    From_Date Date   NOT NULL,
    To_Date Date   NOT NULL
);

CREATE TABLE Titles (
    Emp_No Int   NOT NULL,
    Title Varchar(50)   NOT NULL,
    From_Date Date   NOT NULL,
    To_Date Date   NOT NULL
);

select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

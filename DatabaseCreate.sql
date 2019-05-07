-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/2u9DyZ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" int   NOT NULL,
    "dept_name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" int   NOT NULL,
    "from_date" dateTime   NOT NULL,
    "to_date" dateTime   NOT NULL
);

CREATE TABLE "Dept_manager" (
    "dept_no	FK" int   NOT NULL,
    "emp_no	FK" int   NOT NULL,
    "from_date" dateTime   NOT NULL,
    "to_date" dateTime   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no	PK" int   NOT NULL,
    "birth_date" dateTime   NOT NULL,
    "first_name" varchar(32)   NOT NULL,
    "last_name" varchar(32)   NOT NULL,
    "gender" varchar(6)   NOT NULL,
    "hire_date" datetime   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no	FK" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" datetime   NOT NULL,
    "to_date" datetime   NOT NULL
);

CREATE TABLE "Titles" (
    "emp_no" int   NOT NULL,
    "title" varchar(32)   NOT NULL,
    "from_date" datetime   NOT NULL,
    "to_date" datetime   NOT NULL
);

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no	PK");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_dept_no	FK" FOREIGN KEY("dept_no	FK")
REFERENCES "Dept_emp" ("dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no	FK" FOREIGN KEY("emp_no	FK")
REFERENCES "Employees" ("emp_no	PK");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no	PK");





CReATe TABLe "employees" (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(32)   NOT NULL,
    "last_name" varchar(32)   NOT NULL,
    "gender" varchar(6)   NOT NULL,
    "hire_date" date   NOT NULL,

    CONSTRAINT "uc_employees_emp_no" UNIQUe (
        "emp_no	PK"
    )
);

CReATe TABLe "departments" (
    "dept_no" varchar(12)   NOT NULL,
    "dept_name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KeY (
        "dept_no"
     )
);

CReATe TABLe "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(12)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CReATe TABLe "dept_manager" (
    "dept_no	FK" varchar(12)   NOT NULL,
    "emp_no	FK" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CReATe TABLe "salaries" (
    "emp_no	FK" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CReATe TABLe "titles" (
    "emp_no" int   NOT NULL,
    "title" varchar(32)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

ALTeR TABLe "dept_emp" Add CONSTRAINT "fk_dept_emp_emp_no" FOReIGN KeY("emp_no")
ReFeReNCeS "employees" ("emp_no	PK");

ALTeR TABLe "dept_emp" Add CONSTRAINT "fk_dept_emp_dept_no" FOReIGN KeY("dept_no")
ReFeReNCeS "departments" ("dept_no");

ALTeR TABLe "dept_manager" Add CONSTRAINT "fk_dept_manager_dept_no	FK" FOReIGN KeY("dept_no	FK")
ReFeReNCeS "departments" ("dept_no");

ALTeR TABLe "dept_manager" Add CONSTRAINT "fk_dept_manager_emp_no	FK" FOReIGN KeY("emp_no	FK")
ReFeReNCeS "employees" ("emp_no	PK");



--List the following details of each employee: employee number, last name, first name, gender, and salary.

		select e.emp_no, last_name, first_name, gender, salary from employees e
		join salaries s  on e.emp_no = s.emp_no

--List employees who were hired in 1986.

		select * from employees where extract (year from hire_date) = 1986


--List the manager of each department with the following information: department number,
--department name, the manager's employee number, last name, first name, and start and end employment dates.

			select d.dept_no, dept_name, dm.emp_no, last_name, first_name, from_date, to_date
			from employees e join dept_manager dm on e.emp_no = dm.emp_no
			join departments d on dm.dept_no = d.dept_no

 -- List the department of each employee with the following information:
 --employee number, last name, first name, and department name.
 
			 select e.emp_no, last_name, first_name, dept_name 
			 from employees e join dept_emp de on e.emp_no = de.emp_no
			 join departments d on de.dept_no = d.dept_no
 

-- List all employees whose first name is "Hercules" and last names begin with "B."

			select * from employees where first_name ='Hercules' and last_name like 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

			select e.emp_no, last_name, first_name, dept_name from employees e join dept_emp de on e.emp_no  = de.emp_no
			join departments d on de.dept_no = d.dept_no
			WHERE dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


		select e.emp_no, last_name, first_name, dept_name from employees e join dept_emp de on e.emp_no  = de.emp_no
					join departments d on de.dept_no = d.dept_no
					WHERE dept_name in ('Sales','Development')


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

				select last_name, count (last_name) from employees
				group by last_name
				order by count(last_name) desc



--BONUS--  Look up your employee ID to see if your boss thinks he/she has a sense of humor

				select * from employees where emp_no = '499942'
 -- Combined tables 'employees' and 'salaries' by an inner join with the common column of employee number (emp_no)
 -- and output the employee number, last name, first name, sex, and salary.
 select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
 from employees as e
 inner join salaries as s on e.emp_no = s.emp_no
 
 --List first name, last name, and hire date for employees who were hired in 1986.
 select first_name, last_name, hire_date from employees 
 where hire_date >= '1986-01-01' and hire_date <= '1986-12-31'
 
 --Joining department employees, departments, employees, and department managers with inner join to list the manager ('m0001') 
 --of each department with the following information: department number, department name, the manager's employee number,
 --last name, first name.
 select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
 from employees as e 
 inner join dept_emp as de on de.emp_no = e.emp_no
 inner join departments as d on d.dept_no = de.dept_no
 inner join dept_manager as dm on dm.emp_no = e.emp_no
 where e.emp_title = 'm0001'
 
 --List the department of each employee with the following information: employee number,
 --last name, first name, and department name.
 select e.emp_no, e.last_name, e.first_name, d.dept_name
 from employees as e
 inner join dept_emp as de on de.emp_no = e.emp_no
 inner join departments as d on d.dept_no = de.dept_no
 
 --List first name, last name, and sex for employees whose first name is "Hercules" 
 --and last names begin with "B."
 select  e.first_name, e.last_name, d.dept_name
 from employees as e
 inner join dept_emp as de on de.emp_no = e.emp_no
 inner join departments as d on d.dept_no = de.dept_no 
 where e.first_name = 'Hercules' and e.last_name like 'B%'
 
 --List all employees in the Sales department, including their employee number,
 --last name, first name, and department name.
 select e.emp_no, e.first_name, e.last_name, d.dept_name
 from employees as e
 inner join dept_emp as de on de.emp_no = e.emp_no
 inner join departments as d on d.dept_no = de.dept_no
 where d.dept_name = 'Sales'
 
 --List all employees in the Sales and Development departments, including their employee number, 
 --last name, first name, and department name.
 select e.emp_no, e.first_name, e.last_name, d.dept_name
 from employees as e
 inner join dept_emp as de on de.emp_no = e.emp_no
 inner join departments as d on d.dept_no = de.dept_no
 where d.dept_name = 'Sales' or d.dept_name = 'Development'
 
 --In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
 select count(last_name), last_name
 from employees
 group by last_name
 order by count desc

 

 
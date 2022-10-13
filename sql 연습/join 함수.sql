-- inner join 
select a.first_name, b.title
	from employees a, titiles b
    where a.emp_no = b.emp_no  -- join 조건 (n-1)
    and b.to_date = '9999-01-01'; -- row 선택 조건
    
    
-- 재 직원의 이름과 직책을 출력하되 여성 엔지니어만 출력하세요.
select a.first_name, b.title
	from employees a, titiles b
    where a.emp_no = b.emp_no  -- join 조건 (n-1)
    and b.to_date = '9999-01-01' -- row 선택 조건
    and a.gender = 'f'
    and b.title = 'engineer'; 
    
-- ANSI/ISO SQL1999 JOIN 표준 문법

-- 1) Natural Join
-- 두테이블의 이름이 같은 공통 컬럼이 있으면 조인 조건을 명시 하지 않아도 암묵적으로 조인이 됨 
select a.first_name, b.title
	from employees a natural join titiles b    
    where b.to_date = '9999-01-01'; 
    
-- 2) join ~using 
-- natural joining 
select * 
	from salaries a natural join titles b 
    where b.to_date = '9999-01-01';
    
select count(*)
	from salaries a join title b using (emp_no)
    where b.to_date = '9999-01-01';

-- 3 join ~on
-- 직책별 연봉을 큰 수선대로 출력하세요.
select b,title, avg(salary) 
	from salaries  a
    join titles b on a.emp_no = b.emp_no
    where b.to_date = '1999-01-01'
     and a.to_date = '9999-01-01'
group by b.title
order by avg(salary) desc;

-- 실습 회사 생활을 반영한 직원별 근무부서를 사번, 직원 전체이름 , 근무부서를 출력해 보세요
select a.emp_no, a.frst_name, b.departm
	from employees a, departments b, dept_emp c
    where a.emp_no = c.emp_no
		and b.dept_no = c.emp_no 
        and c.to_date = '9999-01-01'
        
-- 현재 회사에서 지급되고있느 급여체게를 반영한 결과를 출력하세요.
-- 사번, 전체이름. 연봉 형태로 출력
select  a.emp_no, a.frstname, b.salary
	from employees a, salaries b
    where a.emp_no = b.emp_no
    and b.to_date = '9999-01-01';
    
-- 현재 직책별로 평균 연봉 과 인원수를 구하되
-- 직책별로 이원이 100명 이상인 직책만 출력하세요
select a.title, avg(b.salary), count(*)
	from titles a, salaries b
    where a.emp_no = n.emp_no
group by a.title
	having count(*) >= 100;
    
-- 현재 부서별로 직책이 엔지니어링인 직원들에 대해서 평균 급여를 구하시오
-- 부서이름, 평균급여 로 출력 .
select a.dept_no name, avg(salary)
	from departments a, dept_emp b, salaries c, titles d
	where a.dept_no = b.dept_no
	and b.emp_no = c.emp_no
    and c.emp_no = d.emp_no
    and b.to_date = '9999-01-01'
    and c.to_date = '9999-01-01'
    and d.to_date = '9999-01-01'
    and d.title = 'Engineer'
group by a.dept_name
order by avg(salaries) desc;





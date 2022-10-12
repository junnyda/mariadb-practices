-- 함수: 문자열

-- upper
select upper('seoul'), upper('sEoul'), upper('seouL');
select upper(first_name) from employees;


-- lower 
select lower('seoul'), lower('sEoul'), lower('seouL');

-- substring(문자열, index, length)
select substring('Hello World', 3, 2);

-- 예제) 1989년에 입사한 사원들의 이름, 입사일을 출력
select first_name, hire_date
	from employees
    where '1989' = substinrg(hire_date 1, 4);
    
-- lpad(오른쪽 정렬), rpad(왼쪽 정렬)
select lpad('1234',10,'-'), rpad('1234', 10, '-')

select lpad('salary',10,'*')from salaries;

-- trim, ltrim, rtrim
select concat('---', ltrim('    hello    '), '---'),
	concat('---', rtrim('    hello    '), '---'),
	concat('---', ltrim('    hello    '), '---')
-- 함수 

-- abs
select abs(1), abs(-1);


-- ceil
select ceil(3.14), ceiling(3.14);

-- floor
select floor(3.14);

-- mod
select mod(10,3)

-- round(x) x 에 가장 근전합 정수 반올림
-- round(x, d) x값 중에 소수점 d자리에 가장근점한 실수
select round(1.498), round(1.498,1), round(1.498, 0);

-- pover(x,y), pow(x, y): x의 y승
select power(2, 10), pow(2, 10);

-- sign(x) 
select sign(20), sign(-100), sign(0);

-- greatest(x, y, ...), least(x, y, ...)
select greatest(10, 40, 20, 50), least (10,  40, 20 , 50);
select greatest('b', 'A', 'C', 'B'), greatest('hellow', 'hela', 'hell');
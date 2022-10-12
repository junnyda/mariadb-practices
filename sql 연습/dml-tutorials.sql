-- 대소문자 구분 없음
SELECT VERSION(), VerSion(), CURRENT_DATE, cUrrent_DaTe;

-- 함수 및 수식
select 
   sin(pi()/4), 
   (4+1)*5;
-- 테이블 삭제
drop table pet;


-- 테이블 만들기 
create table pet(
	name varchar(20),
	owner varchar(20),
	species varchar(20),
	gender char(1),
    birth date,
    death date
);

-- 스키마 확인 
desc pet;

-- 조회 
select name, owner , species, gender, birth, death from pet;

-- 데이터 넣기(생성, create)
insert 
  into pet
value('록키', '배승준',  'dog', 'm', '2020-10-12', null);

-- 데이터 삭제(삭제, Delete)
delete
 from pet 
where name ='록키';


update pet set death = null where death='0000-00--00';

-- update (수정, update)
update pet
	set death = null
   where name != 'Bowser';
   
-- 조회1: where

-- 1990년 이후에 태어난 아이들은?(출력:
select name , sepcies, brith
 from pet
where birth > '1990-12-31';

-- Gwen과 함꼐 사는 아이들은? (출력: 이름, 종, 집사)
select name, species, owner
 from pet
where owner = 'Gwen';

-- null 다루기1 : 현재 살아있는 아이들은? (이름, 생일, 사망일
select name, birth, death
  from pet
  where death is null;

-- null 다루기2: 사망한 아이들은? (이름, 생일, 사망)
select name, birth, death
 from pet
where death is not null;

-- like 검색(패턴매칭): 이름이 b로 시작하는 아이들은? (이름)  (% 글자수 제한x)
select name
 from pet
where name like 'b%'; 

-- llike 검색2(패턴매칭) 이름이 b로 시작하는 아이들 중에 이름이 6자인 아이는? (_로 길이를 지정)
select name
 from pet
 where name like 'b______';
 
-- 정령(order by)

-- 아이디들  어린 순으로 출력하세요(이름, 생일)
select name, birth
  from pet
  order by birth desc;

-- 아이들을 나이가 많은 순으로 출력하세요 
select name, birth
 from pet
 order by birth asc;
  
 -- 집계(통계) 함수 ( count(*))
select count(*) from pet;

select count(death) from pet; 
select count(*) from pet where death is not null;



  
  
  



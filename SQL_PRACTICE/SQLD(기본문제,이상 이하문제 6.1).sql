-- emp 테이블에서 사원번호가 7698인 사원의 이름, 업무, 급여를 출력하시오.
SELECT	ENAME,
		JOB,
		SAL
  FROM	emp
 WHERE	EMPNO = 7698;
-- emp 테이블에서 사원이름이 SMITH인 사람의 이름과 월급, 부서번호를 구하시오, 
SELECT	ENAME,
		SAL,
        DEPTNO
  FROM	emp
 WHERE	ENAME = "SMITH";
-- 월급이 2500이상 3500 미만인 사원의이름, 입사일, 월급을 구하시오.
SELECT	ENAME,
		HIREDATE,
        SAL
  FROM	emp
 WHERE	SAL >= 2500
   AND	SAL <  3500;
-- 급여가 2000에서 3000사이에 포함되지 않는 사원의이름, 업무, 급여를 출력하시오.
SELECT	ENAME,
		JOB,
        SAL
  FROM	emp
 WHERE	SAL < 2000
    OR	SAL	> 3000;

-- 81년05월01일과 81년12월03일 사이에 입사한 사원의이름, 급여, 입사일을 출력하시오.
SELECT	ENAME,
		SAL,
        HIREDATE
  FROM	emp
 WHERE	HIREDATE	BETWEEN	'19810501' AND	'19811203';

SELECT * FROM emp;
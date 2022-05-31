-- [예제] ALLEN와 동일한 직급(job)을 가진 사원을 출력하는 sql문을 서브쿼리를 이요해서 작성해 보자
SELECT	ENAME,
		JOB
  FROM	emp
 WHERE	JOB = (
			SELECT	JOB
              FROM	emp
			 WHERE	ENAME = "ALLEN");

-- [예제] SMITH의 급여와 동일하거나 더 많이 받는 사원 이름과 급여를 출력해 보자
SELECT	ENAME,
		SAL
  FROM	emp
 WHERE	SAL >= (
			SELECT	SAL
              FROM	emp
			 WHERE	ENAME = "SMITH"
);
-- [예제] 급여를 3000 이상 받는 사원이 소속된 부서와 동일한 부서에서 근무하는 사원들의 정보를 출력해 보자
SELECT	ENAME,
		EMPNO,
		JOB,
        SAL,
        MGR,
        HIREDATE,
        DEPTNO,
        COMM
  FROM	emp
 WHERE	DEPTNO in (
		SELECT	DEPTNO
          FROM	emp
		 WHERE	SAL >= 3000
);

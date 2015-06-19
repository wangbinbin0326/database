/* Formatted on 2015/6/19 17:14:43 (QP5 v5.163.1008.3004) */
CREATE TABLE dept
(
   deptno   NUMBER (2) CONSTRAINT pk_dept PRIMARY KEY,
   dename   VARCHAR2 (14),
   loc      VARCHAR2 (13)
);

CREATE TABLE emp
(
   empno      NUMBER (4) CONSTRAINT pk_emp PRIMARY KEY,
   ename      VARCHAR2 (10),
   job        VARCHAR2 (9),
   mgr        NUMBER (4),
   hiredate   DATE,
   sal        NUMBER (7, 2),
   comm       NUMBER (7, 2),
   deptno     NUMBER (2) CONSTRAINT fk_deptno REFERENCES dept
);

CREATE TABLE bonus
(
   ename   VARCHAR (10),
   job     VARCHAR (9),
   sal     NUMBER,
   comm    NUMBER
);

CREATE TABLE salgrade
(
   grade   NUMBER,
   losal   NUMBER,
   hisal   NUMBER
)
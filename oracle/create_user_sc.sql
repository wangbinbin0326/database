-- create user sc
create user sc
identified by pass
default tablespace tbs_02
temporary tablespace temp_demo
profile default
account unlock;

-- 3 Roles for sc
grant resource to sc;
grant connect to sc;

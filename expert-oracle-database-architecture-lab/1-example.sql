drop table t purge;

create table t(x int);

create or replace procedure proc1
as
begin
    for i in 1 .. 10000
    loop
        execute immediate
        'insert into t values(:x)' using i;
    end loop;
end;
/

create or replace procedure proc2
as
begin
    for i in 1 .. 10000
    loop
        execute immediate
        'insert into t values('||i||')';
    end loop;
end;
/
-- mystat2.sql reports the difference (&V is populated by running the first script,
-- mystat.sql it uses the SQL*Plus NEW_VAL feature for that. It contains the last VALUE selected from the query above)

set echo off
set verify off

select a.name, b.value V, to_char(b.value-&V, '999,999,999,999') diff
  from v$statname a, v$mystat b
 where a.statistic# = b.statistic#
   and lower(a.name) like '%' || lower('&S') || '%'
/

set echo on
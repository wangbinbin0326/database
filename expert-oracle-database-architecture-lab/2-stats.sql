CREATE OR REPLACE FORCE VIEW SCOTT.STATS
(
   NAME,
   VALUE
)
AS
   SELECT 'STAT...' || a.name name, b.VALUE
     FROM v$statname a, v$mystat b
    WHERE a.statistic# = b.statistic#
   UNION ALL
   SELECT 'LATCH.' || name, gets FROM v$latch
   UNION ALL
   SELECT 'STAT...Elapsed time', hsecs FROM v$timer;
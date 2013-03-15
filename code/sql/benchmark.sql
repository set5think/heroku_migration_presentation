dct83gqfeii39f=> BEGIN;
dct83gqfeii39f=> EXPLAIN ANALYZE SELECT generate_series(1,1000000,1);
                                         QUERY PLAN                                          
---------------------------------------------------------------------------------------------
 Result  (cost=0.00..0.00 rows=1 width=0) (actual time=0.008..1141.080 rows=1000000 loops=1)
 Total runtime: 2233.273 ms
(2 rows)
dct83gqfeii39f=> EXPLAIN ANALYZE CREATE TABLE abc AS SELECT generate_series(1,1000000,1);
                                         QUERY PLAN                                          
                                        ---------------------------------------------------------------------------------------------
 Result  (cost=0.00..0.00 rows=1 width=0) (actual time=0.012..1577.464 rows=1000000 loops=1)
 Total runtime: 4458.538 ms
(2 rows)

Time: 4474.989 ms
dct83gqfeii39f=> DROP TABLE abc;
DROP TABLE
Time: 29.822 ms
dct83gqfeii39f=> CREATE TABLE abc AS SELECT generate_series(1,1000000,1);
SELECT 1000000
Time: 2306.769 ms
dct83gqfeii39f=> ROLLBACK;


hassan=: CREATE SERVER mysql_svr FOREIGN DATA WRAPPER mysql_fdw
         OPTIONS (address '127.0.0.1', port '3306');
CREATE SERVER
Time: 2.180 ms
hassan=: CREATE FOREIGN TABLE odp_projects (id INTEGER, name TEXT) SERVER mysql_svr OPTIONS
         (database 'odp_production', query 'SELECT id, name FROM odp_production.projects');
CREATE FOREIGN TABLE
Time: 2.823 ms
hassan=: CREATE USER MAPPING FOR PUBLIC SERVER mysql_svr OPTIONS (username 'hshahid', password 'xxxxxxxxxx');
CREATE USER MAPPING
Time: 1.679 ms
hassan=: EXPLAIN ANALYZE SELECT * FROM odp_projects LIMIT 10;                                                          QUERY PLAN                                                           
-------------------------------------------------------------------------------------------------------------------------------
 Limit  (cost=25.00..35.00 rows=10 width=36) (actual time=523.997..524.007 rows=10 loops=1)
   ->  Foreign Scan on odp_projects  (cost=25.00..11466.00 rows=11441 width=36) (actual time=523.995..524.003 rows=10 loops=1)
         Remote server startup cost: 25
         MySQL query: SELECT id, name FROM odp_production.projects
 Total runtime: 667.406 ms
(5 rows)

Time: 857.613 ms
hassan=:

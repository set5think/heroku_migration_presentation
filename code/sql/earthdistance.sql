#START:cube
SELECT * FROM table_name
WHERE earth_box(ll_to_earth(source_lat, source_lng), 5000) --kilometers
@> ll_to_earth(lat_column, lng_column);
#END:cube

#START:point
SELECT * FROM table_name
WHERE (POINT(source_lat, source_lng) <@> POINT(lat_column, lng_column)) <= 10;
#END:point

#START:knn
SELECT * FROM table_name
WHERE (POINT(source_lat, source_lng) <@> POINT(lat_column, lng_column)) <= 10
ORDER BY POINT(lat_column, lng_column) <-> POINT(source_lat, source_lng);
#END:knn

#START:server
$ taps server mysql://root@localhost/dbname?encoding=utf8 tmpuser tmppass
#END:server

#START:client
$ taps pull postgres://localhost/dbname?default_schema=schema_name http://tmpuser:tmppass@host:5000 -s schema_name
#END:client

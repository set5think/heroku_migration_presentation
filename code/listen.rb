1.9.3-p194 :001 > conn = PG::Connection.connect({dbname: 'postrello_development'})
=> <PG::Connection:0x007f8f571b6bb8>
1.9.3-p194 :002 > conn.exec('LISTEN "test_trello"')
=> <PG::Result:0x007f8f571bfe70>
1.9.3-p194 :003 > conn.wait_for_notify do |event, pid, extra|
1.9.3-p194 :004 >   puts "event: #{event}, pid: #{pid}, extra: #{extra}"
1.9.3-p194 :005?> end
event: test_trello, pid: 66785, extra: hi
=> "test_trello"

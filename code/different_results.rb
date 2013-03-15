rows = ActiveRecord::Base.connection.execute(
  'SELECT id FROM users LIMIT 1'
)
rows.each do |row|
  puts "#{row}, #{row.class}"
end
MySQL: -> 1, Array
Postgres: -> {"id" => 1}, Hash

SCHEMA = 'custom_schema'

if !ActiveRecord::Base.connection.schema_exists?(SCHEMA)
  ActiveRecord::Base.connection.execute("CREATE SCHEMA #{SCHEMA}")
end

ActiveRecord::Base.connection.execute(
  "SET search_path = #{SCHEMA},public;"
)

initializer "active_record.initialize_database" do |app|
  ActiveSupport.on_load(:active_record) do
    db_connection_type = "DATABASE_URL"
    unless ENV['DATABASE_URL']
      db_connection_type  = "database.yml"
      self.configurations = app.config.database_configuration
    end
    Rails.logger.info "Connecting to database specified by #{db_connection_type}"

    establish_connection
  end
end

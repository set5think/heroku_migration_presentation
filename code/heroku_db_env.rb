class HerokuDbEnvRailtie < Rails::Railtie
  initializer :initialize_heroku_db_env, {:group => :default, :before => "active_record.initialize_database"} do |app|
    db_config = HerokuDbEnv.build_db_config(app.config.database_configuration)

    ENV['DATABASE_URL'] = nil

    app.config.class_eval do
      define_method(:database_configuration) { db_config }
    end
  end
end

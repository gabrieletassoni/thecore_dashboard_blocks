Rails.application.configure do
  config.after_initialize do
    # Good place for sending concerns about modules
    # i.e.
    # ModelName.send(:include, ModelNameConcern)
    # - ModelNameConcern can be defined in config/initializers folder in order to be sure it's automatically loaded during engine bootstrap
  end
end

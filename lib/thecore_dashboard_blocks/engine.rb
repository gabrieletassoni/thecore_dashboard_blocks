module ThecoreDashboardBlocks
  class Engine < ::Rails::Engine
    initializer "thecore_dashboard_blocks.assets.precompile" do |app|    
      # Here you can place the assets provided by this engine in order for them to be precompiled in production and JIT 
      # compiled in development.
      # As an example:
      # app.config.assets.precompile += %w( overrides.css )
      # app.config.assets.precompile += %w( android-chrome-192x192.png )
      # ...
    end
    initializer 'thecore_dashboard_blocks.add_to_thecore_engines_list' do |app|
      Thecore::Base.thecore_engines << self.class
    end
    initializer 'thecore_dashboard_blocks.add_to_migrations' do |app|
      # Automatically add to main app migrations coming from this engine withiut the need for a rake install
      config.paths['db/migrate'].expanded.each { |expanded_path| app.config.paths['db/migrate'] << expanded_path } unless app.root.to_s.match root.to_s
    end
  end
end

$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "thecore_dashboard_blocks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "thecore_dashboard_blocks"
  spec.version     = ThecoreDashboardBlocks::VERSION
  spec.description = "Overrides to change default Dashboard View for Rails Admin Projects"
  spec.summary = "Blocks Representation in Rails Admin Dashboard Root Action"
  spec.email = ["gabriele.tassoni@gmail.com"]
  spec.authors = ["Gabriele Tassoni"]
  spec.homepage = "https://github.com/gabrieletassoni/thecore_dashboard_blocks"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.add_dependency 'thecore_ui_rails_admin', '~> 2.0'


end

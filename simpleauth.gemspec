require_relative "lib/simpleauth/version"

Gem::Specification.new do |spec|
  spec.name        = "simpleauth"
  spec.version     = Simpleauth::VERSION
  spec.authors     = ["Jasper Mayone"]
  spec.email       = ["me@jaspermayone.com"]
  spec.homepage    = "https://github.com/jdogcoder/simpleauth"
  spec.summary     =  "Simple authentication for Rails."
  spec.description =  "Simple authentication for Rails."
  spec.license     = "MIT"


  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = # "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jdogcoder/simpleauth"
   spec.metadata["changelog_uri"] =  "https://github.com/jdogcoder/simpleauth/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "LICENSE.md", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
end

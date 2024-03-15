require_relative "lib/simpleauth/version"

Gem::Specification.new do |spec|
  spec.name        = "simpleauth"
  spec.version     = Simpleauth::VERSION
  spec.authors     = ["Jasper Mayone", "Reese Armstrong"]
  spec.email       = ["me@jaspermayone.com", "me@reeseric.ci"]
  spec.homepage    = "https://github.com/jdogcoder/simpleauth"
  spec.summary     =  "Simple authentication for Rails."
  spec.description =  "Simple authentication for Rails."
  spec.license     = "MIT"


  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = 'https://rubygems.org/'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jdogcoder/simpleauth"
  spec.metadata["changelog_uri"] =  "https://github.com/jdogcoder/simpleauth/releases"
  spec.metadata["github_repo"] = "ssh://github.com/jdogcoder/simpleauth"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "LICENSE.md", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
  spec.add_dependency "webauthn", "~> 3.1"
end

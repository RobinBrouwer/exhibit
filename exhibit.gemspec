$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "exhibit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "exhibit"
  s.version     = Exhibit::VERSION
  s.authors     = ["Robin Brouwer"]
  s.email       = ["robin@45north.nl"]
  s.homepage    = "https://github.com/RobinBrouwer/exhibit"
  s.summary     = "Exhibit is a simple gem to generate and work with presenters in Rails 3."
  s.description = "Exhibit is a simple gem to generate and work with presenters in Rails 3. It is based on the solution Ryan Bates created in Railscasts Pro episode #287."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_development_dependency "sqlite3"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "elblog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "elblog"
  s.version     = Elblog::VERSION
  s.authors     = ["Pablo Opazo", "Elam Torres"]
  s.email       = ["paocamd@msn.com"]
  s.homepage    = "http://www.4talent.cl"
  s.summary     = "Mininal Blog engine para rails"
  s.description = "Rails engine"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency 'sass-rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'bootstrap-sass', '~> 3.0.3.0'
  s.add_dependency "bootsy"

  s.add_development_dependency "sqlite3"
end

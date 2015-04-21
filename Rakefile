begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

dummy_app = case ENV['RAILS_VERSION']
            when 'default'
              'dummy'
            when '4.0'
              'r4.0'
            when '4.1'
              'r4.1'
            when '4.2'
              'r4.2'
            else
              'dummy'
            end

APP_RAKEFILE = File.expand_path("../spec/#{dummy_app}/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'

Bundler::GemHelper.install_tasks

require 'rdoc/task'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'

desc 'Generate documentation for elblog.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Elblog'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc 'Execute rubocop'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.patterns = ['app/**/*.rb', 'lib/**/*.rb']
end

desc 'Run elblog unit tests'
RSpec::Core::RakeTask.new(:spec)

task default: [:spec, :rubocop]

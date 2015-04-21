source 'https://rubygems.org'

gemspec

rails_version = ENV['RAILS_VERSION'] || 'default'

rails = case rails_version
        when 'default'
          '4.2.1'
        when '4.0'
          { github: 'rails/rails', branch: '4-0-stable' }
        when '4.1'
          { github: 'rails/rails', branch: '4-1-stable' }
        when '4.2'
          { github: 'rails/rails', branch: '4-2-stable' }
        else
          "~> #{rails_version}"
        end

gem 'rails', rails

group :development, :test do
  gem 'byebug'

  gem 'ffaker'

  gem 'rspec-rails'

  gem 'factory_girl'

  gem 'shoulda-matchers', require: false

  gem 'codeclimate-test-reporter', require: false

  gem 'rubocop'

  gem 'spring'
end

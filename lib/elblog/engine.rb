# Elblog
# NameSpace gem Elblog
module Elblog
  # Engine
  # Init class to load Elblog gem
  class Engine < ::Rails::Engine
    require 'sass-rails'
    require 'jquery-rails'
    require 'bootstrap-sass'
    require 'bootsy'
    isolate_namespace Elblog

    # Config to use rspec as test framework
    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end

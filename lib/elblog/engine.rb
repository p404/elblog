module Elblog
  class Engine < ::Rails::Engine
    require 'sass-rails'
    require 'jquery-rails'
    require 'bootstrap-sass'
    require 'bootsy'
    isolate_namespace Elblog
  end
end

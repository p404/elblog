module Elblog
  # Application Helper
  # Provides generic methods helpers to the application
  module ApplicationHelper
    case ENV['RAILS_VERSION']
    when 'default'
      routes = Rails.application.routes.routes
      ROUTE_NAME_ELBLOG = routes.find { |r| r.app.app == Elblog::Engine }.name
    when '4.2.1'
      routes = Rails.application.routes.routes
      ROUTE_NAME_ELBLOG = routes.find { |r| r.app.app == Elblog::Engine }.name
    when '4.2'
      routes = Rails.application.routes.routes
      ROUTE_NAME_ELBLOG = routes.find { |r| r.app.app == Elblog::Engine }.name
    when '4.0'
      routes = Rails.application.routes.routes.routes
      ROUTE_NAME_ELBLOG = routes.find { |r| r.app == Elblog::Engine }.name
    else
      fail "ELblog does not support RAILS #{ENV['RAILS_VERSION']}"
    end
  end
end

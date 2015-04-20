module Elblog
  # Application Helper
  # Provides generic methods helpers to the application
  module ApplicationHelper
    routes = Rails.application.routes.routes
    debugger
    ROUTE_NAME_ELBLOG = routes.find { |r| r.app.app == Elblog::Engine }.name
  end
end

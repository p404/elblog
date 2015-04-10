module Elblog
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      argument :mount_path, :type => :string, :default => "/elblog"
      
      def auth_http
        @elblog_name = ask("Ingrese usuario: ")
        @elblog_password = ask("Ingrese password: ")
      end
      
      def add_routes
        route "mount Elblog::Engine => '#{mount_path}'"
      end
    
      def copy_config
        template 'elblog.rb', 'config/initializers/elblog.rb', '#{mount_path}', @elblog_name, @elblog_password
      end
    end
  end
end
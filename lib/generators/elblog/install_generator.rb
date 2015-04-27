module Elblog
  module Generators
    # InstallGenerator
    # Class Generator to Install gem Elblog config
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      argument :mount_path, type: :string, default: '/elblog'

      def add_routes
        path_root = destination_root + '/config/routes.rb'
        content = ::File.read(path_root)
        regex = %r{mount Elblog::Engine => \'(\/|)[a-zA-z0-9]*\'(\\n|)}
        content = content.gsub(regex, '')
        ::File.write(path_root, content)
        route "mount Elblog::Engine => '#{mount_path}'"
      end

      def copy_config
        template 'elblog.rb', 'config/initializers/elblog.rb', '#{mount_path}',
                 'admin', 'admin'
      end

      def copy_locale
        directory '../../../../config/locales/', 'config/locales/'
      end

      def config_locale
        locale = "Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s"
        application "config.i18n.load_path += Dir[#{locale}]"
      end
    end
  end
end

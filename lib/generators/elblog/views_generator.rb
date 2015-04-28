module Elblog
  module Generators
    # InstallGenerator
    # Class Generator to Override views in Rails app
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views', __FILE__)

      def copy_views
        directory 'elblog', 'app/views/elblog'
      end
    end
  end
end

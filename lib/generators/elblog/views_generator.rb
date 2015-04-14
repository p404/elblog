module Elblog
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views', __FILE__)

      def copy_views
        directory 'elblog', 'app/viewws/elblog'
      end
    end
  end
end

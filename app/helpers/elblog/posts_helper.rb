module Elblog
  # PostsHelper Helper
  # Provides specific methods helpers to the PostsController
  module PostsHelper
    def posts_path
      send(Elblog::ApplicationHelper::ROUTE_NAME_ELBLOG).posts_path
    end

    def post_path(post)
      send(Elblog::ApplicationHelper::ROUTE_NAME_ELBLOG).post_path(post)
    end

    def new_post_path
      send(Elblog::ApplicationHelper::ROUTE_NAME_ELBLOG).new_post_path
    end

    def edit_post_path(post)
      send(Elblog::ApplicationHelper::ROUTE_NAME_ELBLOG).edit_post_path(post)
    end
  end
end

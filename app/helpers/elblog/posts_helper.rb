module Elblog
  module PostsHelper
    def posts_path
      send(Elblog.elblog_path.gsub "/", "").posts_path
    end
    def post_path(post)
      send(Elblog.elblog_path.gsub "/", "").post_path(post)
    end
    def new_post_path
      send(Elblog.elblog_path.gsub "/", "").new_post_path
    end
    def edit_post_path(post)
      send(Elblog.elblog_path.gsub "/", "").edit_post_path(post)
    end
  end
end

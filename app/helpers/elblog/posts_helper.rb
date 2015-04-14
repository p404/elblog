module Elblog
  module PostsHelper
    def posts_path
      send(Rails.application.routes.routes.find {|r| r.app.app == Elblog::Engine}.name).posts_path
    end

    def post_path(post)
      send(Rails.application.routes.routes.find {|r| r.app.app == Elblog::Engine}.name).post_path(post)
    end

    def new_post_path
      send(Rails.application.routes.routes.find {|r| r.app.app == Elblog::Engine}.name).new_post_path
    end

    def edit_post_path(post)
      send(Rails.application.routes.routes.find {|r| r.app.app == Elblog::Engine}.name).edit_post_path(post)
    end
  end
end

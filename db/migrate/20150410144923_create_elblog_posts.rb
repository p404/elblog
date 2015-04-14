# CreateElBlogPosts
# Create table Posts with attributes
class CreateElblogPosts < ActiveRecord::Migration
  def change
    create_table :elblog_posts do |t|
      t.string :title
      t.string :content
      t.string :author

      t.timestamps null: false
    end
  end
end

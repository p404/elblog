require 'rails_helper'

RSpec.describe "elblog/posts/index", :type => :view do
  before(:each) do
    @posts = FactoryGirl.create_list :elblog_post, 2
    assign(:posts, @posts)
  end

  it "renders a list of posts" do
    render
    @posts.each do |post| 
      assert_select "a[href=?]", post_path(post), :text => post.title, :count => 1
      expect(rendered).to match(post.content)
      expect(rendered).to match(post.author)
    end 
  end
end

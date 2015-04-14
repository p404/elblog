require 'rails_helper'

RSpec.describe "elblog/posts/index", :type => :view do
  before(:each) do
    @posts = FactoryGirl.create_list :elblog_post, 2
    assign(:posts, @posts)
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => @posts.first.title, :count => 1
    assert_select "tr>td", :text => @posts.first.content, :count => 1
    assert_select "tr>td", :text => @posts.first.author, :count => 1

    assert_select "tr>td", :text => @posts.last.title, :count => 1
    assert_select "tr>td", :text => @posts.last.content, :count => 1
    assert_select "tr>td", :text => @posts.last.author, :count => 1
  end
end

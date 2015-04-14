require 'rails_helper'

RSpec.describe "elblog/posts/new", :type => :view do
  before(:each) do
    assign(:post, FactoryGirl.build(:elblog_post))
  end

  it "renders new post form" do
    render
    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_author[name=?]", "post[author]"
    end
  end
end

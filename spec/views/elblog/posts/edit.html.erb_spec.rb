require 'rails_helper'

RSpec.describe "elblog/posts/edit", :type => :view do
  before(:each) do
    @post = assign(:post, FactoryGirl.create(:elblog_post))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_author[name=?]", "post[author]"
    end
  end
end

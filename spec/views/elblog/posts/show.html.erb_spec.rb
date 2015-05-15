require 'rails_helper'

RSpec.describe "elblog/posts/show", :type => :view do
  before(:each) do
    @post = assign(:post, FactoryGirl.create(:elblog_post))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(CGI.escapeHTML(@post.title))
    expect(rendered).to match(CGI.escapeHTML(@post.content))
    expect(rendered).to match(CGI.escapeHTML(@post.author))
  end
end

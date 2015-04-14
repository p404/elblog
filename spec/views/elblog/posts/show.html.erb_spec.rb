require 'rails_helper'

RSpec.describe "elblog/posts/show", :type => :view do
  before(:each) do
    @post = assign(:post, FactoryGirl.create(:elblog_post))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Author/)
  end
end

require 'rails_helper'

RSpec.describe "coments/index", :type => :view do
  before(:each) do
    assign(:coments, [
      Coment.create!(
        :title => "Title",
        :content => "Content",
        :author => "Author"
      ),
      Coment.create!(
        :title => "Title",
        :content => "Content",
        :author => "Author"
      )
    ])
  end

  it "renders a list of coments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end

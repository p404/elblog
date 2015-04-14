require 'rails_helper'

RSpec.describe "coments/new", :type => :view do
  before(:each) do
    assign(:coment, Coment.new(
      :title => "MyString",
      :content => "MyString",
      :author => "MyString"
    ))
  end

  it "renders new coment form" do
    render

    assert_select "form[action=?][method=?]", coments_path, "post" do

      assert_select "input#coment_title[name=?]", "coment[title]"

      assert_select "input#coment_content[name=?]", "coment[content]"

      assert_select "input#coment_author[name=?]", "coment[author]"
    end
  end
end

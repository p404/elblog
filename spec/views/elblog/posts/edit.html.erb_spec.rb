require 'rails_helper'

RSpec.describe "coments/edit", :type => :view do
  before(:each) do
    @coment = assign(:coment, Coment.create!(
      :title => "MyString",
      :content => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit coment form" do
    render

    assert_select "form[action=?][method=?]", coment_path(@coment), "post" do

      assert_select "input#coment_title[name=?]", "coment[title]"

      assert_select "input#coment_content[name=?]", "coment[content]"

      assert_select "input#coment_author[name=?]", "coment[author]"
    end
  end
end

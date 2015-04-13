require 'rails_helper'

RSpec.describe "coments/show", :type => :view do
  before(:each) do
    @coment = assign(:coment, Coment.create!(
      :title => "Title",
      :content => "Content",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Author/)
  end
end

require 'rails_helper'

RSpec.describe "materials/index", type: :view do
  before(:each) do
    assign(:materials, [
      Material.create!(
        :divnum => "Divnum",
        :divname => "Divname",
        :description => "Description",
        :defmeasure => "Defmeasure",
        :cost => "9.99"
      ),
      Material.create!(
        :divnum => "Divnum",
        :divname => "Divname",
        :description => "Description",
        :defmeasure => "Defmeasure",
        :cost => "9.99"
      )
    ])
  end

  it "renders a list of materials" do
    render
    assert_select "tr>td", :text => "Divnum".to_s, :count => 2
    assert_select "tr>td", :text => "Divname".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Defmeasure".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

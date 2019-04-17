require 'rails_helper'

RSpec.describe "materials/show", type: :view do
  before(:each) do
    @material = assign(:material, Material.create!(
      :divnum => "Divnum",
      :divname => "Divname",
      :description => "Description",
      :defmeasure => "Defmeasure",
      :cost => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Divnum/)
    expect(rendered).to match(/Divname/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Defmeasure/)
    expect(rendered).to match(/9.99/)
  end
end

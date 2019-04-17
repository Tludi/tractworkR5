require 'rails_helper'

RSpec.describe "materials/edit", type: :view do
  before(:each) do
    @material = assign(:material, Material.create!(
      :divnum => "MyString",
      :divname => "MyString",
      :description => "MyString",
      :defmeasure => "MyString",
      :cost => "9.99"
    ))
  end

  it "renders the edit material form" do
    render

    assert_select "form[action=?][method=?]", material_path(@material), "post" do

      assert_select "input[name=?]", "material[divnum]"

      assert_select "input[name=?]", "material[divname]"

      assert_select "input[name=?]", "material[description]"

      assert_select "input[name=?]", "material[defmeasure]"

      assert_select "input[name=?]", "material[cost]"
    end
  end
end

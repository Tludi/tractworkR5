require 'rails_helper'

RSpec.describe "materials/new", type: :view do
  before(:each) do
    assign(:material, Material.new(
      :divnum => "MyString",
      :divname => "MyString",
      :description => "MyString",
      :defmeasure => "MyString",
      :cost => "9.99"
    ))
  end

  it "renders new material form" do
    render

    assert_select "form[action=?][method=?]", materials_path, "post" do

      assert_select "input[name=?]", "material[divnum]"

      assert_select "input[name=?]", "material[divname]"

      assert_select "input[name=?]", "material[description]"

      assert_select "input[name=?]", "material[defmeasure]"

      assert_select "input[name=?]", "material[cost]"
    end
  end
end

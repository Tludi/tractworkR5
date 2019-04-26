require 'rails_helper'

RSpec.describe "csi_divisions/new", type: :view do
  before(:each) do
    assign(:csi_division, CsiDivision.new(
      :divnum => "MyString",
      :divtitle => "MyString",
      :groupname => "MyString",
      :subgroupname => "MyString"
    ))
  end

  it "renders new csi_division form" do
    render

    assert_select "form[action=?][method=?]", csi_divisions_path, "post" do

      assert_select "input[name=?]", "csi_division[divnum]"

      assert_select "input[name=?]", "csi_division[divtitle]"

      assert_select "input[name=?]", "csi_division[groupname]"

      assert_select "input[name=?]", "csi_division[subgroupname]"
    end
  end
end

require 'rails_helper'

RSpec.describe "csi_divisions/edit", type: :view do
  before(:each) do
    @csi_division = assign(:csi_division, CsiDivision.create!(
      :divnum => "MyString",
      :divtitle => "MyString",
      :groupname => "MyString",
      :subgroupname => "MyString"
    ))
  end

  it "renders the edit csi_division form" do
    render

    assert_select "form[action=?][method=?]", csi_division_path(@csi_division), "post" do

      assert_select "input[name=?]", "csi_division[divnum]"

      assert_select "input[name=?]", "csi_division[divtitle]"

      assert_select "input[name=?]", "csi_division[groupname]"

      assert_select "input[name=?]", "csi_division[subgroupname]"
    end
  end
end

require 'rails_helper'

RSpec.describe "admin/csi_divisions/edit", type: :view do
  before(:each) do
    @admin_csi_division = assign(:admin_csi_division, Admin::CsiDivision.create!(
      :divnum => "MyString",
      :divtitle => "MyString",
      :groupname => "MyString",
      :subgroupname => "MyString"
    ))
  end

  it "renders the edit admin_csi_division form" do
    render

    assert_select "form[action=?][method=?]", admin_csi_division_path(@admin_csi_division), "post" do

      assert_select "input[name=?]", "admin_csi_division[divnum]"

      assert_select "input[name=?]", "admin_csi_division[divtitle]"

      assert_select "input[name=?]", "admin_csi_division[groupname]"

      assert_select "input[name=?]", "admin_csi_division[subgroupname]"
    end
  end
end

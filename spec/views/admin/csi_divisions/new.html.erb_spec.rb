require 'rails_helper'

RSpec.describe "admin/csi_divisions/new", type: :view do
  before(:each) do
    assign(:admin_csi_division, Admin::CsiDivision.new(
      :divnum => "MyString",
      :divtitle => "MyString",
      :groupname => "MyString",
      :subgroupname => "MyString"
    ))
  end

  it "renders new admin_csi_division form" do
    render

    assert_select "form[action=?][method=?]", admin_csi_divisions_path, "post" do

      assert_select "input[name=?]", "admin_csi_division[divnum]"

      assert_select "input[name=?]", "admin_csi_division[divtitle]"

      assert_select "input[name=?]", "admin_csi_division[groupname]"

      assert_select "input[name=?]", "admin_csi_division[subgroupname]"
    end
  end
end

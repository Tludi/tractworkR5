require 'rails_helper'

RSpec.describe "csi_divisions/index", type: :view do
  before(:each) do
    assign(:csi_divisions, [
      CsiDivision.create!(
        :divnum => "Divnum",
        :divtitle => "Divtitle",
        :groupname => "Groupname",
        :subgroupname => "Subgroupname"
      ),
      CsiDivision.create!(
        :divnum => "Divnum",
        :divtitle => "Divtitle",
        :groupname => "Groupname",
        :subgroupname => "Subgroupname"
      )
    ])
  end

  it "renders a list of csi_divisions" do
    render
    assert_select "tr>td", :text => "Divnum".to_s, :count => 2
    assert_select "tr>td", :text => "Divtitle".to_s, :count => 2
    assert_select "tr>td", :text => "Groupname".to_s, :count => 2
    assert_select "tr>td", :text => "Subgroupname".to_s, :count => 2
  end
end

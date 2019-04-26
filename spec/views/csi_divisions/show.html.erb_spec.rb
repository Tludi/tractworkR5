require 'rails_helper'

RSpec.describe "csi_divisions/show", type: :view do
  before(:each) do
    @csi_division = assign(:csi_division, CsiDivision.create!(
      :divnum => "Divnum",
      :divtitle => "Divtitle",
      :groupname => "Groupname",
      :subgroupname => "Subgroupname"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Divnum/)
    expect(rendered).to match(/Divtitle/)
    expect(rendered).to match(/Groupname/)
    expect(rendered).to match(/Subgroupname/)
  end
end

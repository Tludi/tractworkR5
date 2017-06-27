require 'rails_helper'

RSpec.describe "time_punches/index", type: :view do
  before(:each) do
    assign(:time_punches, [
      TimePunch.create!(
        :workSegment_id => 2,
        :status => false
      ),
      TimePunch.create!(
        :workSegment_id => 2,
        :status => false
      )
    ])
  end

  it "renders a list of time_punches" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

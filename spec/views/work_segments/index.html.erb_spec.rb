require 'rails_helper'

RSpec.describe "work_segments/index", type: :view do
  before(:each) do
    assign(:work_segments, [
      WorkSegment.create!(
        :totalTime => "9.99",
        :estimatedTime => "9.99",
        :status => false,
        :workday_id => 2,
        :task => "Task"
      ),
      WorkSegment.create!(
        :totalTime => "9.99",
        :estimatedTime => "9.99",
        :status => false,
        :workday_id => 2,
        :task => "Task"
      )
    ])
  end

  it "renders a list of work_segments" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Task".to_s, :count => 2
  end
end

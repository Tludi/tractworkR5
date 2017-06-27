require 'rails_helper'

RSpec.describe "work_segments/new", type: :view do
  before(:each) do
    assign(:work_segment, WorkSegment.new(
      :totalTime => "9.99",
      :estimatedTime => "9.99",
      :status => false,
      :workday_id => 1,
      :task => "MyString"
    ))
  end

  it "renders new work_segment form" do
    render

    assert_select "form[action=?][method=?]", work_segments_path, "post" do

      assert_select "input[name=?]", "work_segment[totalTime]"

      assert_select "input[name=?]", "work_segment[estimatedTime]"

      assert_select "input[name=?]", "work_segment[status]"

      assert_select "input[name=?]", "work_segment[workday_id]"

      assert_select "input[name=?]", "work_segment[task]"
    end
  end
end

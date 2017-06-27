require 'rails_helper'

RSpec.describe "work_segments/edit", type: :view do
  before(:each) do
    @work_segment = assign(:work_segment, WorkSegment.create!(
      :totalTime => "9.99",
      :estimatedTime => "9.99",
      :status => false,
      :workday_id => 1,
      :task => "MyString"
    ))
  end

  it "renders the edit work_segment form" do
    render

    assert_select "form[action=?][method=?]", work_segment_path(@work_segment), "post" do

      assert_select "input[name=?]", "work_segment[totalTime]"

      assert_select "input[name=?]", "work_segment[estimatedTime]"

      assert_select "input[name=?]", "work_segment[status]"

      assert_select "input[name=?]", "work_segment[workday_id]"

      assert_select "input[name=?]", "work_segment[task]"
    end
  end
end

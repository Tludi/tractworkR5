require 'rails_helper'

RSpec.describe "time_punches/edit", type: :view do
  before(:each) do
    @time_punch = assign(:time_punch, TimePunch.create!(
      :workSegment_id => 1,
      :status => false
    ))
  end

  it "renders the edit time_punch form" do
    render

    assert_select "form[action=?][method=?]", time_punch_path(@time_punch), "post" do

      assert_select "input[name=?]", "time_punch[workSegment_id]"

      assert_select "input[name=?]", "time_punch[status]"
    end
  end
end

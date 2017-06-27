require 'rails_helper'

RSpec.describe "time_punches/new", type: :view do
  before(:each) do
    assign(:time_punch, TimePunch.new(
      :workSegment_id => 1,
      :status => false
    ))
  end

  it "renders new time_punch form" do
    render

    assert_select "form[action=?][method=?]", time_punches_path, "post" do

      assert_select "input[name=?]", "time_punch[workSegment_id]"

      assert_select "input[name=?]", "time_punch[status]"
    end
  end
end

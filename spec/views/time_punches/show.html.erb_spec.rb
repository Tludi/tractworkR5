require 'rails_helper'

RSpec.describe "time_punches/show", type: :view do
  before(:each) do
    @time_punch = assign(:time_punch, TimePunch.create!(
      :workSegment_id => 2,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end

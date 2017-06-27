require 'rails_helper'

RSpec.describe "work_segments/show", type: :view do
  before(:each) do
    @work_segment = assign(:work_segment, WorkSegment.create!(
      :totalTime => "9.99",
      :estimatedTime => "9.99",
      :status => false,
      :workday_id => 2,
      :task => "Task"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Task/)
  end
end

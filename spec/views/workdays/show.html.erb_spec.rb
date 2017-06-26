require 'rails_helper'

RSpec.describe "workdays/show", type: :view do
  before(:each) do
    @workday = assign(:workday, Workday.create!(
      :hoursWorked => "9.99",
      :user_id => 2,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end

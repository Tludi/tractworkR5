require 'rails_helper'

RSpec.describe "workdays/index", type: :view do
  before(:each) do
    assign(:workdays, [
      Workday.create!(
        :hoursWorked => "9.99",
        :user_id => 2,
        :notes => "MyText"
      ),
      Workday.create!(
        :hoursWorked => "9.99",
        :user_id => 2,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of workdays" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

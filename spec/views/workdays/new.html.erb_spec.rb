require 'rails_helper'

RSpec.describe "workdays/new", type: :view do
  before(:each) do
    assign(:workday, Workday.new(
      :hoursWorked => "9.99",
      :user_id => 1,
      :notes => "MyText"
    ))
  end

  it "renders new workday form" do
    render

    assert_select "form[action=?][method=?]", workdays_path, "post" do

      assert_select "input[name=?]", "workday[hoursWorked]"

      assert_select "input[name=?]", "workday[user_id]"

      assert_select "textarea[name=?]", "workday[notes]"
    end
  end
end

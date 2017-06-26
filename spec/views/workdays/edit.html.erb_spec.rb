require 'rails_helper'

RSpec.describe "workdays/edit", type: :view do
  before(:each) do
    @workday = assign(:workday, Workday.create!(
      :hoursWorked => "9.99",
      :user_id => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit workday form" do
    render

    assert_select "form[action=?][method=?]", workday_path(@workday), "post" do

      assert_select "input[name=?]", "workday[hoursWorked]"

      assert_select "input[name=?]", "workday[user_id]"

      assert_select "textarea[name=?]", "workday[notes]"
    end
  end
end

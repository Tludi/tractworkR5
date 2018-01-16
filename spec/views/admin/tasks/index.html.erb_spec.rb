require 'rails_helper'

RSpec.describe "admin/tasks/index", type: :view do
  before(:each) do
    assign(:admin_tasks, [
      Admin::Task.create!(
        :name => "Name"
      ),
      Admin::Task.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/tasks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

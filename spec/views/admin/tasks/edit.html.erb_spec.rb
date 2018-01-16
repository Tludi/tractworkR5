require 'rails_helper'

RSpec.describe "admin/tasks/edit", type: :view do
  before(:each) do
    @admin_task = assign(:admin_task, Admin::Task.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit admin_task form" do
    render

    assert_select "form[action=?][method=?]", admin_task_path(@admin_task), "post" do

      assert_select "input[name=?]", "admin_task[name]"
    end
  end
end

require 'rails_helper'

RSpec.describe "admin/tasks/show", type: :view do
  before(:each) do
    @admin_task = assign(:admin_task, Admin::Task.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

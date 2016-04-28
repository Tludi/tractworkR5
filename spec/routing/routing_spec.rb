require 'rails_helper'

describe 'Get #root' do
  it 'renders the root template' do
    expect(get: "/").to route_to(
      controller: "launchpad",
      action: "index"
      ) 
  end
end


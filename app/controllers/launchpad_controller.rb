class LaunchpadController < ApplicationController
  skip_before_action :require_login
  def index
    #any page variable need to be set before rendering layout
    render :layout => "launchpad"

  end
end

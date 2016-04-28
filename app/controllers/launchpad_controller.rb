class LaunchpadController < ApplicationController
  def index
    #any page variable need to be set before rendering layout
    render :layout => "launchpad"

  end
end

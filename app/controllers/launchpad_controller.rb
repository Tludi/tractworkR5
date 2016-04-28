class LaunchpadController < ApplicationController
  def index
    @mainTitle = "Welcome to the launchpad"
    @mainDesc = "time to launch!"
    render :layout => "empty"

  end
end

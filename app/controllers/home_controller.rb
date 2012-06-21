class HomeController < ApplicationController
  def index
  end

  def build_sketch
    #Run the rake task to build the sketch and send it to the arduino in the background
    system "/usr/bin/rake make:upload --trace 2>&1 >> #{Rails.root}/log/rake.log &"
    flash[:notice] = "Building Sketch"
    redirect_to :back
  end

  def stop_led
    #Run the rake task to build the sketch and send it to the arduino in the background
    system "/usr/bin/rake make:upload sketch='ledoff' --trace 2>&1 >> #{Rails.root}/log/rake.log &"
    flash[:notice] = "Building Sketch"
    redirect_to :back
  end
end

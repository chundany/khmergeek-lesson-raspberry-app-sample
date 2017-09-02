class BoardController < ApplicationController

  def home
  end

  def action
  	flash[:success] = "action01"

    pin = PiPiper::Pin.new(:pin => 17, :direction => :out)
    pin.on
    sleep 1
    pin.off

    redirect_to action: 'home'

  end

  private

end

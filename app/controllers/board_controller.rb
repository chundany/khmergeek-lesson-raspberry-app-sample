class BoardController < ApplicationController

  def home
  end

  def action
  	flash[:success] = "action01"

    pin.on
    sleep 1
    pin.off
    PiPiper::Pin.release(17)

    redirect_to action: 'home'

  end

  private

end

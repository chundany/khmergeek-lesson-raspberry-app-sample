class BoardController < ApplicationController

  def home
  end

  def action
  	flash[:success] = "action01"

    @@pin1.on
    @@pin2.off

    @@pin3.on
    @@pin4.off
    sleep 2

    @@pin1.off
    @@pin2.off

    @@pin3.off
    @@pin4.off

    redirect_to action: 'home'

  end

  private

end

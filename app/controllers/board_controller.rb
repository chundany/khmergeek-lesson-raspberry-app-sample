class BoardController < ApplicationController

  def home
  end

  def action
  	flash[:success] = "action01"

    @@pin1.on
    sleep 1
    @@pin1.off

    @@pin2.on
    sleep 1
    @@pin2.off

    @@pin3.on
    sleep 1
    @@pin3.off

    @@pin4.on
    sleep 1
    @@pin4.off

    redirect_to action: 'home'

  end

  private

end

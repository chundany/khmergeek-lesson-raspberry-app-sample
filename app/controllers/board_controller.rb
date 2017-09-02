class BoardController < ApplicationController

  def home
  end

  def go
  	flash[:success] = "go"

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

  def back
  	flash[:success] = "back"

    @@pin1.off
    @@pin2.on

    @@pin3.off
    @@pin4.on
    sleep 2

    @@pin1.off
    @@pin2.off
    @@pin3.off
    @@pin4.off

    redirect_to action: 'home'

  end

  def left
  	flash[:success] = "left"

    @@pin1.off
    @@pin2.on

    @@pin3.off
    @@pin4.off
    sleep 2

    @@pin1.off
    @@pin2.off
    @@pin3.off
    @@pin4.off

    redirect_to action: 'home'

  end

  def right
  	flash[:success] = "right"

    @@pin1.off
    @@pin2.off

    @@pin3.off
    @@pin4.on
    sleep 2

    @@pin1.off
    @@pin2.off
    @@pin3.off
    @@pin4.off

    redirect_to action: 'home'

  end






  private

end

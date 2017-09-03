class BoardController < ApplicationController
  before_action :mcp_3008, only: [:home]

  def home
  end

  def go
    flash[:success] = "go"

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

  def back
  	flash[:success] = "back"

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

  def mcp_3008

    adc_num = 0
    value = 0

    PiPiper::Spi.begin do |spi|
      raw = spi.write [1, (8+adc_num)<<4, 0] 
      value = ((raw[1]&3) << 8) + raw[2]
    end

    vol = (value * 3.3) / 1024

    if vol >= 2.0
      @dist = "30cm"
    elsif vol >= 1.5
      @dist = "40cm"
    elsif vol >= 1.0
      @dist = "60cm"
    elsif vol >= 0.8
      @dist = "90cm"
    else
      @dist = "-"
    end

  end


end

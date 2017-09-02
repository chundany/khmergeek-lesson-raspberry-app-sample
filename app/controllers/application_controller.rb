class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @@pin1 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  @@pin2 = PiPiper::Pin.new(:pin => 18, :direction => :out)
  @@pin3 = PiPiper::Pin.new(:pin => 27, :direction => :out)
  @@pin4 = PiPiper::Pin.new(:pin => 22, :direction => :out)

end

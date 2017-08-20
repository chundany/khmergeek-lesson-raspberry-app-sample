module Sensors
  def self.get
  	puts "=================================================="
  	puts "=================================================="
  	puts "sensor value get"
  	puts "=================================================="
  	puts "=================================================="
    str_tmp = `sudo python bme280_sample.py`
    str_tmp2 = str_tmp.split("\n")[0]
    temperature_tmp = str_tmp2.split(" ")[2]

  	@sensor = Sensor.new
  	@sensor.temperature = temperature_tmp
  	@sensor.save
  end
end
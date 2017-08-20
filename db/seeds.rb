1.upto(5) do |num|
  @sensor = Sensor.new
  @sensor.temperature = "10"
  @sensor.save
end

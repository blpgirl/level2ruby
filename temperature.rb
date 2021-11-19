class TemperatureConverter
  def initialize
  end

  #1 convert from celsius to fahrenheit, 2 from F to C
  def convert_temperature(convert_to=1, temperature)
    new_temperature = 0
    if(convert_to==1)
      #convert celsius to fahrenheit
      new_temperature = (temperature * 9/5.to_f) + 32
    elsif convert_to == 2
      #convert fahrenheit to celsius
      new_temperature = (temperature - 32) * 5/9.to_f #to_f is so that it saves as float, otherwise puts an integer
    else
      puts "I don't know what you're doing"
    end
  end #method convert_temperature

#1 convert from celsius to fahrenheit, 2 from F to C
def convert_temperature_other_division_method(convert_to=1, temperature)
  new_temperature = 0
  if(convert_to==1)
    #convert celsius to fahrenheit
    new_temperature = (temperature * 9.fdiv(5)) + 32
  elsif convert_to == 2
    #convert fahrenheit to celsius
    new_temperature = (temperature - 32) * 5.fdiv(9) #fdiv is so that it divides as a float, otherwise puts an integer
  else
    puts "I don't know what you're doing"
  end
end #method convert_temperature_other_division_method

end #class TemperatureConverter

converter = TemperatureConverter.new
result = converter.convert_temperature(1, 32)
puts "how much is 32 celsius in fahrenheit? #{result.round}"
result = converter.convert_temperature(2, 100)
puts "how much is 100 fahrenheit in celsius? #{result.round}" #if i want decimals i can pass .round(1) or how many i need
result = converter.convert_temperature(0, 100)
puts "doing something crazy #{result}"

result = converter.convert_temperature_other_division_method(1, 32)
puts "how much is 32 celsius in fahrenheit? #{result.round(2)}"
result = converter.convert_temperature_other_division_method(2, 100)
puts "how much is 100 fahrenheit in celsius? #{result.round(2)}" #if i want decimals i can pass .round(1) or how many i need
result = converter.convert_temperature_other_division_method(0, 100)
puts "doing something crazy #{result}"

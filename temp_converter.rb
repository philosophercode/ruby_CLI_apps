# Ruby temp converter
# Temperature formulae from:
# http://www.rapidtables.com/convert/temperature/

print "Temperature value? "
temp = gets.chomp.to_f
puts temp

puts [ 'Temperate Unit:', '    Fahrenheit [Type: 1]', '    Celsius    [Type: 2]', '    Kelvin     [Type: 3]' ]
unit = gets.chomp.to_i


if unit == 1
    puts "fahrenheit"
    fahrenheit = temp
    celsius = (fahrenheit - 32) * 5/9
    kelvin = (celsius + 273)

elsif unit == 2
    puts "celsius"
    celsius = temp
    fahrenheit = (celsius*1.8) + 32
    kelvin = (celsius + 273)

elsif unit == 3
    puts "kelvin"
    kelvin = temp
    fahrenheit = (kelvin * 1.8 - 459.67)
    celsius = (kelvin - 273)

else
    print "Please enter a number 1 (f), 2 (C), or 3(K):"
    puts [ 'Temperate Unit:', '    Fahrenheit [Type: 1]', '    Celsius    [Type: 2]', '    Kelvin     [Type: 3]' ]

end

puts "#{fahrenheit}°f", "#{celsius}°C", "#{kelvin}K"

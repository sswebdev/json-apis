require './weather_api'

coordinates = get_coordinates("Chicago, IL")

latitude = coordinates.first
longitude = coordinates.last

puts "Latitude: #{latitude}"
puts "Longitude: #{longitude}"

current_temp = get_current_temperature(latitude, longitude)
puts "It is #{current_temp} degrees."

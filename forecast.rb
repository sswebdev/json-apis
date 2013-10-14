require './weather_api'

# CHALLENGE: Get coordinates for any city we want
coordinates = get_coordinates("Los Angeles, CA")

latitude = coordinates.first
longitude = coordinates.last

puts "Latitude: #{latitude}"
puts "Longitude: #{longitude}"


# You can stop here for now.
# ---------------------------

current_temp = get_current_temperature(latitude, longitude)
puts "It is #{current_temp} degrees."

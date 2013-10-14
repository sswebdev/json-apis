# 1. Can you figure out how this program currently works?
#    (Run this program and save the results into a file named weather.html.)
#
# 2. Can you fix it so that we can see the weather for all three cities?

def start_of_page
  html = '<!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <title>Weather Chart</title>
      <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.css">
      <link rel="stylesheet" href="css/weather.css">
    </head>
    <body>
    <div class="container">'

    return html
end

def end_of_page
  final_part = '</div></body></html>'
  return final_part
end

def html_for_city(city_name, current_temp, image)
  html_fragment = '<div class="col-md-3 chart well">'
  html_fragment << "<h2>Chicago</h2>"
  html_fragment << '<p class="temperature">61&deg; F</p>'

  if image != nil
    html_fragment << '<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/20090524_Buildings_along_Chicago_River_line_the_south_border_of_the_Near_North_Side_and_Streeterville_and_the_north_border_of_Chicago_Loop%2C_Lakeshore_East_and_Illinois_Center.jpg/800px-thumbnail.jpg">'
  end

  html_fragment << "</div>"
  return html_fragment
end

puts start_of_page
puts html_for_city("Chicago", 61, 'http://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/20090524_Buildings_along_Chicago_River_line_the_south_border_of_the_Near_North_Side_and_Streeterville_and_the_north_border_of_Chicago_Loop%2C_Lakeshore_East_and_Illinois_Center.jpg/800px-thumbnail.jpg')
puts html_for_city("Los Angeles", 84, 'http://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Macarthur_Park.jpg/800px-Macarthur_Park.jpg')
puts html_for_city("Anchorage", 46, 'http://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Anchorage_on_an_April_evening.jpg/800px-Anchorage_on_an_April_evening.jpg')
puts end_of_page

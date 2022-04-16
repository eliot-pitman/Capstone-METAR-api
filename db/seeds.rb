# 100.times do
#   name = FFaker::Name.name
#   email = FFaker::Internet.disposable_email
#   password = "password"
#   username = FFaker::Internet.user_name
#   home_airport = ["jfk","bbg","plk","lax"].sample
#   avitar = FFaker::Image.url
#   User.create!(name: name, email: email, password: password, password_confirmation: password,username:username,home_airport: home_airport, avitar: avitar)
# end


# 30.times do
#   iata = ["jfk","bbg","plk","lax"].sample
#   name = FFaker::Address.city
#   location = FFaker::Address.street_address
#   Airport.create(iata: iata, name: name, location: location)
# end 

# 100.times do
#   user_id = [*1..100].sample
#   airport_id = [*1..30].sample
#   airport_iata = Airport.find(airport_id).iata
#   Favorite.create!(user_id: user_id, airport_iata: airport_iata, airport_id: airport_id)
# end 
class AirportsController < ApplicationController
  before_action :authenticate_user
  require 'http'
  require 'json'
  # def create
  #   airport = Airport.new(
  #     iata: params[:iata],
  #     icao: params[:icao],
  #     name: params[:name],
  #     location: params[:location]
  #   )
  #   if airport.save
  #     render json: airport.as_json
  #   else
  #     render json: { errors: airport.errors.full_messages }, status: :bad_request
  #   end
  # end 

  # def index

  #   user = USer.find(current_user.id)
  #   user.favorites
  #   resposne = HTTP.get()
    
  # end

  # def show
  #   user = User.find(current_user.id)
  #   favorites = user.favorites
  #   favorites_weather = []
  #   favorites.each do |n|

  #     favorite = n['airport_iata']

  #     response = HTTP.get("https://avwx.rest/api/metar/#{favorite}?token=token")

  #     favorites_weather << response.as_json
    
  #   end
    
  #   render json: favorites_weather.as_json

  # end
 
end

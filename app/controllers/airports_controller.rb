class AirportsController < ApplicationController
  before_action ::authenticate_user
  require 'http'
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
end

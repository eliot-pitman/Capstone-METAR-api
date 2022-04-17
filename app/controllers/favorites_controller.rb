class FavoritesController < ApplicationController
  require 'http'
  def create

    response = HTTP.headers("X-RapidAPI-Key" => ".gitignore").get("https://airport-info.p.rapidapi.com/airport?iata=#{params[:iata]}")

    response = response.parse(:json)

    favorite = Favorite.new(
      user_id: current_user.id,
      airport_iata: response["iata"],
      airport_id: response["id"],
      airport_icao: response["icao"],
      airport_name: response["name"]

    )

    if favorite.save
      render json: favorite.as_json
    else 
      render json: { errors: favorite.errors.full_messages }, status: :bad_request
    end
  end

  
end

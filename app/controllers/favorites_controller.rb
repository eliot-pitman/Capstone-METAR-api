class FavoritesController < ApplicationController
  require 'http'
  def create

    response = HTTP.headers("X-RapidAPI-Key" => "key in .gitignore").get("https://airport-info.p.rapidapi.com/airport?iata=#{params[:iata]}")

    response = response.parse(:json)

    favorite = Favorite.new(
      user_id: current_user.id,
      airport_iata: response["iata"],
      airport_id: "1",
      airport_icao: response["icao"]
    )

    if favorite.save
      render json: favorite.as_json
    else 
      render json: { errors: favorite.errors.full_messages }, status: :bad_request
    end
  end

  
end

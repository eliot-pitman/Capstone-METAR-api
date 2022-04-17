class FavoritesController < ApplicationController
  
  require 'http'
  before_action :authenticate_user
  
  
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

  def destroy
    favorite = Favorite.find(params[:id])
    if favorite.destroy
      render json: {message: "successfully removed"}
    else 
      render error: {error: "not removed"}
    end
  end
  
  def index
    user = User.find(current_user.id)
    favorites = user.favorites
    render json: favorites.as_json
  end

end

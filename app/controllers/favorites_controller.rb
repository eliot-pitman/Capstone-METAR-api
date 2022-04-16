class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(
      user_id: current_user.id,
      airport_iata: params[:iata],
      airport_id: Airport.find_by(iata: "#{params[:iata]}").id,
      airport_icao: Airport.find_by(iata: "#{params[:iata]}").icao
    )

    if favorite.save
      render json: favorite.as_json
    else 
      render json: { errors: favorite.errors.full_messages }, status: :bad_request
    end
  end
  
end

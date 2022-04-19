class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully"}, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end


  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: {message: "user removed"}
    else
      render error: {error: "user not removed"}
    end
  end


  def update
    user = User.find(current_user.id)


    

    user.name = params["name"] || user.name
    user.email = params["email"] || user.email
    user.username = params["username"] || user.username
    user.home_airport = params["home_airport"] || user.home_airport
    user.avitar = params["avitar"] || user.avitar
  

    if user.save
      render json: {message: "user updated"}
    else
      render json: {errors: user.errors.full_messages}, status: 422
    end
  end

  def show
    user = User.find(current_user.id)
    render json: user.as_json
  end

  def show_weather
    user = User.find(current_user.id)

    favorites = user.favorites

    favorites_weather = []

    favorites.each do |n|

      favorite = n['airport_iata']

      response = HTTP.get("https://avwx.rest/api/metar/#{favorite}?token=lOeb42_xPJibT35Pn9HvjCNI1GWcpsUNW9n0h4gQgw8")

      favorites_weather << response
    
    end
     
     
    render json: favorites_weather.as_json


  end
end



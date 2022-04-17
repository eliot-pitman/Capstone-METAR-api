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
end



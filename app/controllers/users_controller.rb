class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]


  def create
    @user = User.new(email: params[:email], password: params[:password])
    if @user.save
      render json @user 
    else 
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def signin
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      render json: @user
    else
      render json: "Invalid Password", status: :unprocessable_entity
    else
      render json: "Email Address Not Found", status: :unprocessable_entity
    end
  end
   


  private
  def set_user
    @user= User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end

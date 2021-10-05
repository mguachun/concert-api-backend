class ConcertsController < ApplicationController
  def index
    @concerts = User.find(params[:user_id]).concerts
    render json: @concerts
  end

  def create
    if @concert.save
      render json: @concert
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @concert.destroy 
    render json: "Concert Deleted"
  end

  private 
  def set_concert
    @concert = User.find(params[:user_id]).concerts.find(params[:id])
  end

  def concert_params
    params.require(:concert).permit(:uid, :artist, :concert_title, :venue, :date, :genre, :comment)
  end


end

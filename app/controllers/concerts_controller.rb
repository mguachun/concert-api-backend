class ConcertsController < ApplicationController
  before_action :set_concert, except: [:index]
  def index
    concerts = Concert.all
    render json: concerts,
    except: [:created_at, :updated_at]
  end

  def create
    if @concert.save
      render json: @concert,
      except: [:created_at, :updated_at]
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @concert.destroy 
    render json: "Concert Successfully Deleted"
  end

  private 
  def set_concert
    @concert = User.find(params[:user_id]).concerts.find(params[:id])
  end

  def concert_params
    params.require(:concert).permit(:artist, :concert_title, :venue, :date, :genre, :comment, :user_id)
  end


end

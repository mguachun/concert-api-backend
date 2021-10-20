class ConcertsController < ApplicationController
  before_action :set_concert, except: [:index, :create]
  def index
    concerts = Concert.all
    render json: concerts,
    except: [:created_at, :updated_at]
  end

  def show
    render json: @concert,
    except: [:created_at, :updated_at]
  end

  def create
    concert = Concert.new(concert_params)
    if concert.save
      render json: @concert,
      except: [:created_at, :updated_at]
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @concert = Concert.find_by_id(params[:id])
    @concert.destroy 
  end

  private 
  def set_concert
    @concert = Concert.find_by_id(params[:id])
  end

  def concert_params
    params.require(:concert).permit(:artist, :concert_title, :venue, :date, :genre, :comment)
  end


end

class PlacesController < ApplicationController
    #before_action :set_place, only: [  ]
  
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def show
  end

  def edit
  end

  def create
    @place = Place.create(place_params)
    redirect_to places_path
  end

  def destroy
    Place.find(params[:id]).destroy
    redirect_to places_path
  end

  private

  def set_place
    @place = Place.find(place_params[:id])
  end

  def place_params
    params.require(:place).permit(:name)
  end
end
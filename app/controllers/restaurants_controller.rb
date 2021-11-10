class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :destroy]

  def index # GET "restaurants"
    @restaurants = Restaurant.all
  end
  # POST "restaurants"

  def show # GET "restaurants/38"
  end

  def new # GET "restaurants/new"
    @restaurants = Restaurant.new
  end

  def create # POST "restaurants"
    @restaurant = Restaurant.new(task_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurants
    @restaurants =
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
end

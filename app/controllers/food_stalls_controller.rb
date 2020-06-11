class FoodStallsController < ApplicationController
  require 'json'
  require 'open-uri'

  def new
    @food_stall = FoodStall.new
  end

  def create
    @food_stall = FoodStall.new(food_stall_params)
    @food_stall.user = current_user
    if @food_stall.save
      redirect_to food_stall_path(@food_stall)
    else
      render :new
    end
  end

  def show
    @food_stall = FoodStall.find(params[:id])
    @directions_url = "https://www.google.com/maps/dir/?api=1&destination=#{@food_stall.latitude},#{@food_stall.longitude}"
  end

  def search_results
    if params[:location2].present?
      current_user.update(eval(params[:location2]))
      user_location = [current_user.latitude, current_user.longitude]
      food_stalls = FoodStall.near(user_location, 10)
    elsif params[:location] != ""
      food_stalls = FoodStall.near(params[:location], 10)
    elsif current_user.latitude.present? && current_user.longitude.present?
      user_location = [current_user.latitude, current_user.longitude]
      food_stalls = FoodStall.near(user_location, 10)
    else
      food_stalls = FoodStall.all
    end

    if params[:query] != ""
      @search_results = food_stalls.search_by_food_type(params[:query])
    else
      @search_results = food_stalls
    end

    @food_stalls = @search_results.geocoded # returns stalls with coordinates
    @markers = @food_stalls.map do |food_stall|
      {
        lat: food_stall.latitude,
        lng: food_stall.longitude,
        infoWindow: render_to_string(partial: "/food_stalls/map_box", locals: { food_stall: food_stall })
      }
    end

    origin = current_user.longitude.to_s + ',' + current_user.latitude.to_s
    @distances_array = []
    @time_array = []

    if current_user.latitude.present? && current_user.longitude.present?
      @search_results.each do |result|
        destination = result.longitude.to_s + ',' + result.latitude.to_s
        distance_url = "https://api.mapbox.com/directions-matrix/v1/mapbox/walking/#{origin};#{destination}?annotations=distance,duration&access_token=#{ENV['MAPBOX_API_KEY']}"
        distance_serialized = open(distance_url).read
        distance_object = JSON.parse(distance_serialized)
        @distances_array << distance_object['distances'][0][1] # walking distance
        @time_array << time_walking_seconds = distance_object["durations"][0][1] # walking time
      end

      @distances_array.map! do |distance|
        (distance / 1000).round(1)
      end
    end
  end

  def menu
    @food_stall = FoodStall.find(params[:id])
    @food_categories = @food_stall.food_items.map do |item|
      item.food_category
    end.uniq
  end

  def add_menu
    @food_stall = FoodStall.find(params[:id])
  end

  def popular_foods
    @food_stall = FoodStall.find(params[:id])
  end

  private

  def food_stall_params
    params.require(:food_stall).permit(:name, :description, :food_type, :schedule, :vegetarian, :address, :phone_number, :rating, photos: [])
  end
end

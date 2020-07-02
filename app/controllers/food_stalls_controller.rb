class FoodStallsController < ApplicationController
  require 'json'
  require 'open-uri'

  before_action :set_food_stall, only: [:show, :add_menu, :popular_foods, :edit, :update, :popular_foods_first, :popular_foods_second]

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

  def edit
  end

  def update
    if @food_stall.update(food_stall_params)
      redirect_to food_stall_path(@food_stall)
    else
      render :edit
    end
  end

  def show
    @directions_url = "https://www.google.com/maps/dir/?api=1&destination=#{@food_stall.latitude},#{@food_stall.longitude}"
    @favorite_exists = FavoriteFoodstall.where(food_stall: @food_stall, user: current_user) == [] ? false : true
    @recommendation_exists = Recommendation.where(food_stall: @food_stall, user: current_user) == [] ? false : true
  end

  def search_results
    if params[:location2].present?
      current_user.update(eval(params[:location2]))
      user_location = [current_user.latitude, current_user.longitude]
      food_stalls = FoodStall.near(user_location, 10)
    elsif params[:location].present?
      food_stalls = FoodStall.near(params[:location], 10)
      current_user.update(address: params[:location])
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
        properties: {
      'marker-color': '#3bb2d0',
      'marker-size': 'large',
      'marker-symbol': 'rocket'
    },
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

  def popular_foods

  end

  def qr_code

  end

  private

  def food_stall_params
    params.require(:food_stall).permit(:name, :description, :food_type, :main_category, :schedule, :vegetarian, :address, :phone_number, :rating, photos: [])
  end

  def set_food_stall
    @food_stall = FoodStall.find(params[:id])
  end
end

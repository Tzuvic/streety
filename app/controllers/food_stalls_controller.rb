class FoodStallsController < ApplicationController

  def rod
  end


  def new
    @food_stall = FoodStall.new
  end

  def create
    @food_stall = FoodStall.new(food_stall_params)
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
    @search_results = FoodStall.search_by_food_type(params[:query])

      @food_stalls = FoodStall.geocoded # returns flats with coordinates

      @markers = @food_stalls.map do |food_stall|
        {
          lat: food_stall.latitude,
          lng: food_stall.longitude,
          infoWindow: render_to_string(partial: "/food_stalls/map_box", locals: { food_stall: food_stall })
        }
      end
  end

  def menu
    @food_stall = FoodStall.find(params[:id])

    @food_categories = @food_stall.food_items.map do |item|
      item.food_category
    end.uniq
  end


  private

  def food_stall_params
    params.require(:food_stall).permit(:name, :description, :food_type, :schedule, :vegetarian, :address, :phone_number, :rating, photos: [])
  end

end


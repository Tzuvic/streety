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

  private

  def food_stall_params
    params.require(:food_stall).permit(:name, :description, :food_type, :schedule, :vegetarian, :address, :phone_number, :rating, photo: [])
  end

  def show
    @food_stall = FoodStall.find(params[:id])
  end

  def search_results
    @search_results = FoodStall.search_by_food_type(params[:query])
  end

  def menu
    @food_stall = FoodStall.find(params[:id])
  end
end

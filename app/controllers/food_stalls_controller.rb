class FoodStallsController < ApplicationController
  def food_stall_categories
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

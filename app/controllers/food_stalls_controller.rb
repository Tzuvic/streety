class FoodStallsController < ApplicationController
  def food_stall_categories
  end

  def show
    @food_stall = FoodStall.find(params[:id])
  end

  def search_results

  end
end

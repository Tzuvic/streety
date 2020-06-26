class RecommendationsController < ApplicationController
  def update
    recommendation = Recommendation.where(food_stall: FoodStall.find(params[:food_stall]), user: current_user)
    if recommendation == []
      Recommendation.create(food_stall: FoodStall.find(params[:food_stall]), user: current_user)
      @recommendation_exists = true
    else
      recommendation.destroy_all
      @recommendation_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end

class FavoriteFoodstallsController < ApplicationController
  def index
    favorites = current_user.favorite_foodstalls
    @favorites_list = []
    favorites.each do |favorite|
      @favorites_list << favorite.food_stall
    end
  end

  def update
    favorite = FavoriteFoodstall.where(food_stall: FoodStall.find(params[:food_stall]), user: current_user)
    if favorite == []
      FavoriteFoodstall.create(food_stall: FoodStall.find(params[:food_stall]), user: current_user)
      @favorite_exists = true
    else
      favorite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end

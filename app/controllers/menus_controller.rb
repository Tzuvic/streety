class MenusController < ApplicationController
  def new
    @food_stall = FoodStall.find(params[:food_stall_id])
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @food_stall = FoodStall.find(params[:food_stall_id])
    @menu.food_stall = @food_stall
    @menu.food_item_id = menu_params[:food_item_id]
    @menu.save

    redirect_to food_stall_path(@food_stall)
  end

  private

  def menu_params
    params.require(:menu).permit(:food_item_id)
  end
end

class MenusController < ApplicationController
  def new
    @food_stall = FoodStall.find(params[:food_stall_id])
    @menu = Menu.new
  end

  def create
    params[:menu]["food_item_id"].reject(&:empty?).each do |item_id|
      @menu = Menu.new
      @food_stall = FoodStall.find(params[:food_stall_id])
      @menu.food_stall = @food_stall
      @menu.food_item_id = item_id
      @menu.save
    end

    redirect_to food_stall_path(@food_stall)
  end

  private

  def menu_params
    params.require(:menu).permit(:food_item_id)
  end
end

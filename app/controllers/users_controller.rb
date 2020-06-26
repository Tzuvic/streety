class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @vouch = Vouch.new

    recommendations = current_user.recommendations
    @recommendations_list = []
    recommendations.each do |recommendation|
      @recommendations_list << recommendation.food_stall
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo, :first_name, :last_name, :current_city, :home_town)
  end
end

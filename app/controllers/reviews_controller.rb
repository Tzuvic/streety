class ReviewsController < ApplicationController

  before_action :find_food_stall

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.food_stall = @food_stall
    if @review.save
      reviews = []
      @food_stall.reviews.each do |review|
        reviews << review.rating
      end
      new_average = reviews.sum / reviews.count
      @food_stall.rating = new_average
      @food_stall.save
      redirect_to popular_foods_first_food_stall_path(@food_stall)
    else
      flash[:alert] = "Something went terribly wrong."
      render :new
    end

  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_food_stall
    @food_stall = FoodStall.find(params[:food_stall_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

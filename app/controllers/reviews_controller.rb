 class ReviewsController < ApplicationController

  before_action :find_food_stall

  def new
    @review = Review.new
    @food_recommendation = @food_stall.food_items
  end

  def create
    @review = Review.new(review_params)
    @food_recommendation = @food_stall.food_items
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

      @food_stall.popular_foods = {} if @food_stall.popular_foods.nil?

      params[:recommendation]["option"].reject(&:empty?).each do |item|
        food = item.to_i
        if @food_stall.popular_foods[food].nil?
          @food_stall.popular_foods[food] = 1
        else
          @food_stall.popular_foods[food] += 1
        end
      end
      @food_stall.save

      redirect_to food_stall_path(@food_stall)
    else
      flash[:alert] = "Please write a review and rate your experience."
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

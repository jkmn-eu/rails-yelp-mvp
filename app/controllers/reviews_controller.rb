class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(valid_params)
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id)
    else
      render :new
    end
  end

  private

  def valid_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end

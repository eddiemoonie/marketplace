class ReviewsController < ApplicationController
  # before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  def create
    @review = Review.new(review_params)
    @review.consumer = current_user.username
    if @feedback.save
      redirect_to user_path(current_user)
    else
      redirect_to new_feedback_path
    end
  end

  def new
    @review = Review.new
    @review.user_id = User.find(params[:user_id])
  end

  private

  def review_params
    params.require(:review).permit(
      :rating,
      :post,
      :user_id,
      :consumer
    )
  end
end

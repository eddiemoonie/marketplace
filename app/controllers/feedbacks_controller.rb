class FeedbacksController < ApplicationController
  # before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.buyer_name = current_user.username
    if @feedback.save
      redirect_to user_path(current_user)
    else
      redirect_to new_feedback_path
    end
  end

  def new
    @feedback = Feedback.new
    @feedback.product_id = Product.find(params[:product_id])
    @feedback.user_id = User.find(params[:user_id])
  end

  private

  def feedback_params
    params.require(:feedback).permit(
      :rating,
      :review,
      :product_id,
      :user_id,
      :buyer_name
    )
  end
end

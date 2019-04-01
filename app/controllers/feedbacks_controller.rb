class FeedbacksController < ApplicationController
  # before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      redirect_to user_path(current_user)
    else
      redirect_to new_feedback_path
    end
  end

  def new
    @feedback = Feedback.new
    @product_id = Product.find(params[:product_id])
    @feedback.buyer_name = current_user.username
  end

  private

  def feedback_params
    params.require(:feedback).permit(
      :rating,
      :review,
      :product_id,
      :buyer_name
    )
  end
end

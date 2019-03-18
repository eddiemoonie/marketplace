class FeedbacksController < ApplicationController
  # before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  # def index
  #   @feedbacks = Feedback.find_by_user_id(params[:user_id])
  # end
  #
  # def new
  #   @feedback = Feedback.new
  # end
  #
  def create
    @feedback = Feedback.new(feedback_params)
    @product = Product.find_by_id(params[:id])
    @feedback.buyer_id = current_user.id
    @feedback.user_id = @product.id
    if @feedback.save
      redirect_to user_path(current_user)
    else
      redirect_to new_feedback_path
    end
  end

  def new
    @feedback = Feedback.new
  end

  private

  def feedback_params
    params.require(:feedback).permit(
      :rating,
      :review,
      :user_id,
      :buyer_id
    )
  end
end

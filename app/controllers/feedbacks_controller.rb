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
  # def create
  #   @feedback = Feedback.new(feedback_params)
  #   @product = Product.find_by_id(params[:id])
  #   @feedback.user_id = current_user.id
  #   @feedback.product_id = @product.id
  #   if @feedback.save
  #     redirect_to user_path(current_user)
  #   else
  #     redirect_to new_feedback_path
  #   end
  # end
end

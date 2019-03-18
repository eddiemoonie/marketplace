class FeedbacksController < ApplicationController
  # before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.buyer_id = current_user.id
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

class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def create
    @review = Review.new params.require(:review).permit(:rating, :description)
    @review.user = current_user
    @review.idea = Idea.find params[:idea_id]
    if @review.save
      redirect_to idea_path(@review.idea)
    else
      flash[:danger] = "Cannot create review"
      redirect_to idea_path(@review.idea)
    end
  end
  def destroy
    @review = Review.find params[:id]
    if can?(:destroy, @review)
      @review.destroy
      redirect_to idea_path(@review.idea)
    end
  end

end

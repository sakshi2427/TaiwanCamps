class ReviewsController < ApplicationController
  before_action :set_campsite, only: %i[new create]

  def create
    @review = Review.new(review_params)
    @review.campsite = @campsite
    @review.save
    if @review.save
      redirect_to campsite_path(@campsite)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_campsite
    @campsite = campsite.find(params[:campsite_id])
  end

  def review_params
    params.require(:review).permit(:content, :content)
  end
end

class CampsitesController < ApplicationController
  before_action :find_campsite, only: [:show]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    @campsites = Campsite.all
  end

  def new
    @campsite = Campsite.new
  end

  def create
    @campsite = Campsite.new(campsite_params)
    @campsite.save
    redirect_to campsite_path(@campsite)
  end

  def show
    @review = Review.new
    if @campsite.reviews.blank?
			@average_review = 0
		else
			@average_review = @campsite.reviews.average(:rating).round(2)
		end
  end

  # def destroy
  #   Campsite.find(params[:id]).destroy
  #   redirect_to campsites_path
  # end

  private

  def find_campsite
    @campsite = Campsite.find(params[:id])
  end

  def campsite_params
    params.require(:campsite).permit(:name, :category, :address, :county, :postal_code, :area, :website, :phone)
  end
end

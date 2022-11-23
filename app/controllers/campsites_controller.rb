class CampsitesController < ApplicationController

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
    @campsite = Campsite.find(params[:id])
    @review = Review.new
  end

  private

  def campsite_params
    params.require(:campsite).permit(:name, :category, :address, :county, :postal_code, :area, :website, :phone)
  end
end

class CampsitesController < ApplicationController

  def index
    @campsites = Campsite.all
  end

  def show
    @campsite = Campsite.find(params[:id])
  end

  private

  def campsite_params
    params.require(:campsite).permit(:name, :category, :address, :county, :postal_code, :area, :website, :phone)
  end
end

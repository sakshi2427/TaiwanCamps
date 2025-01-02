class CampsitesController < ApplicationController 
  before_action :find_campsite, only: [:show] 
  before_action :authenticate_user!, only: [:new, :create, :edit] # Ensure only logged-in users can create a campsite 
  def index 
    @campsites = Campsite.all 
  end 
  def new 
    @campsite = Campsite.new 
  end 
  def create 
    @campsite = Campsite.new(campsite_params) 
    @campsite.user = current_user # Associate the campsite with the current user 
    if @campsite.save 
      logger.info "Campsite created successfully: #{@campsite.inspect}" 
      redirect_to campsite_path(@campsite), notice: 'Campsite was successfully created.' 
    else 
      logger.error "Failed to create campsite: #{@campsite.errors.full_messages.join(", ")}" 
      render :new, status: :unprocessable_entity 
    end 
  rescue StandardError => e 
    logger.error "Error creating campsite: #{e.message}\n#{e.backtrace.join("\n")}" 
    render :new, status: :internal_server_error 
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
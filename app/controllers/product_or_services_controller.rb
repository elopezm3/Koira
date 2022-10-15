class ProductOrServicesController < ApplicationController
  before_action :set_cocktail, only: %i[destroy show edit update]

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.user = current_user
    if @business.save
      redirect_to business_path(@business)
    else
      render :new
    end
  end

  def index
    @business = business.all
  end

  def update
    @business.update(business_params)
    if @business.save
      redirect_to business_path(@business)
    else
      render :edit
    end
  end

  def destroy
    @business.destroy
    redirect_to business_path
  end

  private

  def set_business
    @business = business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:name, :address, :latitude, :longitude, :owner_id)
  end

end

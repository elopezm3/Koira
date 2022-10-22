class BusinessesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_business, only: %i[ show destroy edit ]
  def index
    if params[:query].present?
      query = params[:query].downcase
      @businesses = Business.search_business(query)
      @product_or_services = ProductOrService.search_product_or_service(query)
      @categories = Category.search_category(query)
    end
  end

  def show
    @product_or_services = @business.product_or_services
    @services = @product_or_services.where(type_product_service: "service")
    @products = @product_or_services.where(type_product_service: "product")
    @drinks = @products.where(type_of_product: "drink")
    @food = @products.where(type_of_product: "food")
  end

  def new
    @business = Business.new
  end

  def create
    current_user.role = "seller"
    @business = Business.new(business_params)
    @business.owner = current_user
    # important latitude and longitud to run.
    if @business.save
      redirect_to business_path(@business)
    else
      render :new
    end
  end

  def destroy
    @business.destroy
    redirect_to businesses_path
  end

  def edit
  end

  #It´s necessary a double check in the logic
  def update
    if @business.update(business_params)
      redirect_to business_path(@business)
    else
      render :edit
    end
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:name, :address, :description, :type_of_business, :photos)
  end
end

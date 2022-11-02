class ProductOrServicesController < ApplicationController
  before_action :set_product_or_service, only: [:edit, :update, :destroy]
  def new
    @business = Business.find(params[:business_id])
    @product_or_service = ProductOrService.new
  end

  def edit
  end

  def update
    if @product_or_service.update(product_or_service_params)
      @business = @product_or_service.business
      redirect_to business_path(@business)
    else
      render :edit
    end
  end

  def destroy
    @business = @product_or_service.business
    @product_or_service.destroy
    #redirect_to business_path(@business)
    redirect_to business_path(@business), status: :see_other
  end

  def create
    @business = Business.find(params[:business_id])
    @product_or_service = ProductOrService.new(product_or_service_params)
    if @product_or_service.type_product_service == 'service'
      @product_or_service.type_of_product = ""
    end
    if @product_or_service.type_product_service == 'product' && @product_or_service.type_of_product.nil?
      @product_or_service.type_of_product = 'food'
    end
    @product_or_service.business = @business
    if @product_or_service.save
      redirect_to business_path(@business)
    else
      render :new
    end
  end

  def set_product_or_service
    @product_or_service = ProductOrService.find(params[:id])
  end

  def product_or_service_params
    params.require(:product_or_service).permit(:name, :description, :price, :type_product_service, :type_of_product, :category_id, photos: [])
  end
end

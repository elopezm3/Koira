class ProductOrServicesController < ApplicationController
  def new
    @business = Business.find(params[:business_id])
    @product_or_service = ProductOrService.new
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
    p @product_or_service
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

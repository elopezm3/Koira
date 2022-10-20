class BusinessesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    if params[:query].present?
      query = params[:query].downcase
      @businesses = Business.search_business(query)
      @product_or_services = ProductOrService.search_product_or_service(query)
      @categories = Category.search_category(query)
    end
  end
end

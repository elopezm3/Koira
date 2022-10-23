class PurchasesController < ApplicationController
  before_action :set_purchase, only: :show
  def add
    purchase = Purchase.new
    purchase.buyer = current_user
    purchase.phone = params[:phone]
    purchase.comments = params[:comments] if params[:comments]
    purchase.number_of_people = params[:number_of_people]
    if params[:user_name_check] == "1"
      purchase.user_name = params[:user_name]
    else
      purchase.user_name = "#{current_user.first_name} #{current_user.last_name}"
    end
    purchase.date = params[:date]
    purchase.time = params[:time]
    purchase.save
    params.each do |id, value|
      if (params[id].to_i.positive? && id.to_i.positive?)
        item = PurchaseItem.new
        item.purchase = purchase
        item.product_or_service = ProductOrService.find(id)
        item.save
      end
    end
    redirect_to purchase_path(purchase)
  end
  def show
    @items = @purchase.purchase_items
    @business = @items.first.product_or_service.business
    @services = []
    @food = []
    @drinks = []
    @items.each do |item|
      if item.product_or_service.type_product_service == "service"
        @services.push(item.product_or_service)
      elsif item.product_or_service.type_of_product == "food"
        @food.push(item.product_or_service)
      else
        @drinks.push(item.product_or_service)
      end
    end
  end

  private

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end
end

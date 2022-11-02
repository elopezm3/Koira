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
        item.quantity = params[id]
        item.product_or_service = ProductOrService.find(id)
        item.save
      end
    end
    if purchase.purchase_items.present?
      redirect_to purchase_path(purchase)
    else
      purchase.destroy
    end
  end
  def show
    @items = @purchase.purchase_items
    @total_price = 0
    @items.each do |item|
      individual_price = item.product_or_service.price
      quantity = item.quantity
      @total_price += individual_price * quantity
    end
    @business = @items.first.product_or_service.business
    @services = []
    @food = []
    @drinks = []
    @items.each do |item|
      if item.product_or_service.type_product_service == "service"
        @services.push(item)
      elsif item.product_or_service.type_of_product == "food"
        @food.push(item)
      else
        @drinks.push(item)
      end
    end
  end

  private

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end
end

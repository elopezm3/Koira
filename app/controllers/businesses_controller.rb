class BusinessesController < ApplicationController

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    

  end
end

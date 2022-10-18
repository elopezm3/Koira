class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @bars = Business.where(type: "bar")
    @restaurants = Business.where(type: "restaurant")
    
  end

  def supplier

  end
end

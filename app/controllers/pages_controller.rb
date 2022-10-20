class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @bars = Business.where(type: "bar")
    @restaurants = Business.where(type: "restaurant")
    @businesses_most_visited = Business.all.sort_by { :number_of_purchases }.reverse
    if businesses.size < 10
      @businesses_most_visited = businesses.take(businesses.size)
    else
      @businesses_most_visited = businesses.take(10)
    end
  end

  def supplier

  end
end

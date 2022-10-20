class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @bars = Business.where(type: "bar")
    @restaurants = Business.where(type: "restaurant")
    @businesses_most_visited = Business.all.sort_by { :number_of_purchases }.reverse
    if @businesses_most_visited.size < 10
      @businesses_most_visited = @businesses_most_visited.take(@businesses_most_visited.size)
    else
      @businesses_most_visited = @businesses_most_visited.take(10)
    end
  end

  def supplier

  end
end

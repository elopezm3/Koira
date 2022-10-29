class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def show
    @businesses = @user.my_businesses
    @purchases = @user.my_purchases
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end

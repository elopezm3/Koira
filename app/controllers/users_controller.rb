class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def show
    @businesses = @user.businesses
    @purchases = @user.purchases
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end

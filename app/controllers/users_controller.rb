class UsersController < ApplicationController

  def show
    @business = @user.business
    
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end

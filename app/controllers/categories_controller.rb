class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_category, only: %i[show destroy]
  before_action :set_category, only: %i[create]
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    authorize @category
    @category = Category.new
  end

  def create
    authorize @category
    @category = Category.new(categories_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def edit
    authorize @category
    @category = Category.new
  end

  def update
    authorize @category
    @category.update(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def destroy
    authorize @category
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end

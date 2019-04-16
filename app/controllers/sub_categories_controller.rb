class SubCategoriesController < ApplicationController
  before_action :find_sub_category, only: [:show, :edit, :update, :destroy]
  def index
    @subcategories = SubCategory.all
  end

  def new
    @categories = Category.all
    @subcategory = SubCategory.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to category_sub_categories_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def category_params
    params.require(:sub_category).permit(:name)
  end

  def find_sub_category
    @category = Category.find(params[:id])
  end
end

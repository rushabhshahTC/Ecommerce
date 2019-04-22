class CategoriesController < ApplicationController
  before_action :find_category, only: %i(show edit update destroy)

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
      respond_to do |format|
        format.html
        format.js
      end
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path
  end

  def show; end

  def edit; end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private

    def category_params
      params.require(:category).permit(:name)
    end

    def find_category
      @category = Category.find_by(id: params[:id])
    end
end

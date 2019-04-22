class SubCategoriesController < ApplicationController
  before_action :find_category
  before_action :find_sub_category, only: %i(show edit update destroy)

  def index
    @subcategories = SubCategory.all
  end

  def new
    @subcategory = SubCategory.new
  end

  def create
    @subcategory = @category.sub_categories.create(subcategory_params)
    redirect_to category_sub_categories_path
  end

  def show; end

  def edit; end

  def update
    if @subcategory.update(subcategory_params)
      redirect_to category_sub_categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @subcategory.destroy
    redirect_to category_sub_categories_path
  end

  private

    def subcategory_params
      params.require(:sub_category).permit(:name)
    end

    def find_sub_category
      @subcategory = SubCategory.find_by(id: params[:id])
    end

    def find_category
      @category = Category.find_by(id: params[:category_id])
    end
end

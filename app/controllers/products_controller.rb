class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
  end


  private
  def product_params
    params.require(:product).permit(:name, :price, :sub_category_id, :brand_id)
  end

  def find_product
    @product = Product.find(paramas[:id])
  end
end

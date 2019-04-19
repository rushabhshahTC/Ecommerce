class ProductsController < ApplicationController
  before_action :find_current_user, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @product.product_options.build
  end

  def create
    @product = @user.products.create(product_params)
    redirect_to user_products_path(@user)
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to user_products_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
  end


  private
  def product_params
    params.require(:product).permit(:name, :price, :category_id, :sub_category_id, :brand_id, images: [], product_options_attributes: [:id, :size, :color])
  end

  def find_product
    @product = Product.find(params[:id])
  end

  def find_current_user
    @user = current_user
  end
end

class BrandsController < ApplicationController
  before_action :find_category, only: %i(show edit update destroy)

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @brand = Brand.create(brand_params)
    redirect_to brands_path
  end

  def show; end

  def edit
  end

  def update
    if @brand.update(brand_params)
      redirect_to brands_path
    else
      render 'new'
    end
  end

  def destroy
    @brand.destroy
    redirect_to brands_path
  end

  private

    def brand_params
      params.require(:brand).permit(:name)
    end

    def find_category
      @brand = Brand.find_by(id: params[:id])
    end
end

class OrdersController < ApplicationController
  before_action :find_order, only: %i(show edit update destroy)
  before_action :find_current_user

  def index
  end

  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.create(order_params)
    redirect_to 
  end

  def show
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    redirect_to 
  end

  private

    def order_params
      params.require(:order).permit(:total)
    end

    def find_order
      @order = Order.find_by(id: params[:id])
    end

    def find_current_user
      @user = current_user
    end
end

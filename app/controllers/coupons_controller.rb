class CouponsController < ApplicationController
  before_action :find_current_user, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :find_coupon, only: [:show, :edit, :update, :destroy]
  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = @user.coupons.new(coupon_params)
    if @coupon.save
      redirect_to user_coupons_path
    else
      flash[:error] = @coupon.errors.full_messages
      redirect_to new_user_coupon_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @coupon.update(coupon_params)
      redirect_to user_coupons_path
    else
      render 'edit'
    end
  end

  def destroy
    @coupon.destroy
    redirect_to user_coupons_path
  end

  private
  def coupon_params
    params.require(:coupon).permit(:code, :discount, :end_date)
  end

  def find_coupon
    @coupon = Coupon.find(params[:id])
  end

  def find_current_user
    @user = current_user
  end
end

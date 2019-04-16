class AdminController < ApplicationController
  def index
  end
  def seller
  end
  def customer
    @user = User.new
  end
end

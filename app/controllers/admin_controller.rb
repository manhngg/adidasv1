class AdminController < ApplicationController
  before_action :require_admin
 
  def require_admin
    unless current_user.admin?
      redirect_to root_path
    end
  end

  def products
  	@products = Product.filter(params.slice(:color,:subcolor, :franchise, :producttype, :brand, :category, :subcategory, :sport)).order(:id).page(params[:page]).per(10)
  end

  def orders
  	@orders = Order.all
  end

  def users
    @users = User.all
  end
end
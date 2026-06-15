class CartsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: %i[ show destroy ]

  def show
  end

  def create
    set_cart
    redirect_to cart_path
  end

  def destroy
    @cart.destroy
    session[:cart_id] = nil
    redirect_to products_path, notice: "Your bag was cleared."
  end
end

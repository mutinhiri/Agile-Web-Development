class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]

  def new
    if @cart.line_items.empty?
      redirect_to products_path, notice: "Your cart is empty."
      return
    end
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    unless @order.valid?
      render :new, status: :unprocessable_entity
      return
    end

    session[:cart_id] = nil
    redirect_to products_path, notice: "Thank you for your order! We will reach out soon."
  end

  def show
    # Receipt Page
    @order = Order.find(params[:id])
  end

  private

    def order_params
      params.expect(order: [ :name, :email, :address ])
    end
end

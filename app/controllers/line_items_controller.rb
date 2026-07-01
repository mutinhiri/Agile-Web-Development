class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :set_line_item, only: %i[ update destroy ]

  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.line_items.find_or_initialize_by(product: product)
    @line_item.quantity = @line_item.quantity.to_i + 1

    if @line_item.save
      redirect_to cart_path, notice: "#{product.title} added to cart."
    else
      redirect_to products_path, alert: "Unable to add item to cart."
    end
  end

  def update
    quantity = params[:line_item][:quantity].to_i

    if quantity.positive?
      @line_item.update(quantity: quantity)
    else
      @line_item.destroy
    end

    redirect_to cart_path
  end

  def destroy
    @line_item.destroy
    redirect_to cart_path, notice: "Item removed from your bag."
  end

  private

    def set_line_item
      @line_item = @cart.line_items.find(params[:id])
    end
end

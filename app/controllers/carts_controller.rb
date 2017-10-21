class CartsController < ApplicationController

  def show
      @cart = Cart.find(params[:id])
  end

  def checkout
    @cart = Cart.find(params[:id])

    @cart.subtract_inventory

    @cart.status = "submitted"
    current_user.current_cart = nil
    current_user.save
    @cart.save

    redirect_to cart_path(@cart)

  end

end

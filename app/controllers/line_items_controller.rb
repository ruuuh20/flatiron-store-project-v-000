require 'pry'
class LineItemsController < ApplicationController

  def create
    # When the user adds an item to the cart it should show them their current cart
    if !current_user.current_cart
      current_user.current_cart = Cart.create(user_id: current_user.id)
      @cart = current_user.current_cart

    else
      @cart = Cart.find_by(user_id: current_user.id)
    end
    @cart.add_item(params[:item_id]).save

    # current_user.save
    # binding.pry
    # @cart is being read but not on the cart/show page ??
    redirect_to cart_path(@cart)


  end

end

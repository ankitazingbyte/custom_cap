class CartsController < ApplicationController

	def show
    	@order_items = current_order.order_items
    	@orders= Order.all
  	end
  	
end

class CartsController < ApplicationController

	def show
		@order.user_id = current_user.id
		@order.save
    	@order_items = current_order.order_items
    	@orders= Order.all
  	end	
end

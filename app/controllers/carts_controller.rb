class CartsController < ApplicationController
	before_action :authenticate_user!
	def show
    	@order_items = current_order.order_items
    	@orders= Order.all
  	end
end

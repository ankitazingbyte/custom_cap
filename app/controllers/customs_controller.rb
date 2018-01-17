class CustomsController < ApplicationController
	def index
		if params[:caegory].blank?
			@products = Product.all
		else
	      @category_id = Category.find_by(name: params[:category]).id
	      @categories = Category.where(:category_id => @category_id)
	    end
	end
end

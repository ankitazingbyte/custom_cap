class PaymentsController < ApplicationController
	def new
		@payment = Payment.new
	end
	def create
	    @payment = Payment.new(registration_params)
	    if @payment.save
	      redirect_to @payment.paypal_url(payment_path(@payment))
	    else
	      render :new
	    end
  	end
  	private
  	def product_params
      params.require(:payment).permit(:order_id )
    end
end

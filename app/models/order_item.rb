class OrderItem < ApplicationRecord
	belongs_to :order ,optional: true
  	belongs_to :product, optional: true
  	validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
	validate :order_present
	validate :product_present
	before_save :finalize


	    def unit_price
	      if persisted?
	        self[:unit_price]
	      else
	        product.price
	      end
	    end

	    def total_price
	      unit_price * quantity
	    end
		def paypal_url(return_path)
		    values = {
		        business: "ankita.dangi-facilitator@zingbytes.com",
		        cmd: "_xclick",
		        upload: 1,
		        return: return_path,
		        invoice: id,
		        amount:10,
		        item_name: "cap",
		        item_number: '1',
		        quantity: '1'
		    }
		    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
	  	end
	  private
	    def product_present
	      if product.nil?
	        errors.add(:product, "is not valid or is not active.")
	      end
	    end

	    def order_present
	      if order.nil?
	        errors.add(:order, "is not a valid order.")
	      end
	    end

	    def finalize
	      self[:unit_price] = unit_price
	      self[:total_price] = quantity * self[:unit_price]
	    end
end

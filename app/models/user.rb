class User < ApplicationRecord
	has_many :order_items
	has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 		def admin?
  	     	return self.admin ? true : false
        end
        
end

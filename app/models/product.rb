class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :category
	belongs_to :brand
	has_many :images, as: :imageable
	accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true, update_only: true
	belongs_to :user, optional: true
end

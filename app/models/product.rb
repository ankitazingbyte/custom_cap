class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :category
	belongs_to :brand
	has_many :images, as: :imageable
	accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true, update_only: true
	# default_scope { where(active: true) }
	def self.search(title)
      if title
        where('title LIKE ?', "%#{title}%")
      else
        all
      end
    end

end

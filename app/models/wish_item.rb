class WishItem < ApplicationRecord
	belongs_to :wish
	belongs_to :product
	belongs_to :variant
end

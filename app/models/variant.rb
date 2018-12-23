class Variant < ApplicationRecord
	belongs_to :product
	has_one_attached :avatar
	has_one_attached :hover
	has_many_attached :images
	has_many :cart_items
	has_many :wish__items
	belongs_to :color
	validates_numericality_of :stock, :price, greater_than_or_equal_to: 0
	
end

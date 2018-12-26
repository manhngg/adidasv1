class Product < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :name, presence: true,
	length: { minimum: 1 }
	
	# enum gender_id: {'men': '0', 'women':'1', 'boys': '2', 'girls': '3', 'kids': '4'}
	# enum age_id: {'youth': '0', 'children':'1', 'infant_toddler': '2'}
	# enum color_id: {'black': '0', 'grey':'1', 'whiidte': '2', 'red': '3', 'pink': '4', 'red': '5', 'orange': '6', 'yellow': '7', 'green': '8', 'blue': '9', 'purple': '10', 'beige': '11', 'brown': '12', 'gold': '13', 'silve': '14', 'multicolor': '15'}
	has_many :variants, dependent: :destroy
  	has_many :colors, through: :variants
	belongs_to :gender, required: false
	belongs_to :age, required: false
	belongs_to :franchise, required: false
	belongs_to :category, required: false
	belongs_to :producttype, required: false
	belongs_to :brand, required: false
	belongs_to :sport, required: false
	include Filterable
	scope :gender, -> (status) { where gender_id: status }
	scope :age, -> (status) { where age: status }
	scope :franchise, -> (status) { where franchise_id: status }
	scope :producttype, -> (status) { where producttype_id: status }
	scope :brand, -> (status) { where brand_id: status }
	scope :category, -> (status) { where category_id: status }
	scope :subcategory, -> (status) { where subcategory_id: status }
	scope :sport, -> (status) { where sport_id: status }
	has_many :cart_items
	has_many :wish__items
end

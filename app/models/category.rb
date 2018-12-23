class Category < ApplicationRecord
	has_many :products
	validates :name, uniqueness: true, presence: true,
	length: { minimum: 3 }
	has_many :subcategories, dependent: :destroy
end

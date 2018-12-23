class Producttype < ApplicationRecord
	has_many :products
	validates :name, uniqueness: true, presence: true,
	length: { minimum: 3 }
end

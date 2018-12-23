class Franchise < ApplicationRecord
	has_many :products
	validates :name, uniqueness: true, presence: true,
	length: { minimum: 1 }
end

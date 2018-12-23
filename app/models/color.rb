class Color < ApplicationRecord
	has_many :variants
  	has_many :products, through: :variants
	validates :name, uniqueness: true, presence: true,
	length: { minimum: 3 }
end

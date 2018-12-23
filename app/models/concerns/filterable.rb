module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter(filtering_params)
      results = self.where(nil)
      filtering_params.each do |key, value|
        if value.present? then
          id_from_value = Gender.find_by(name: value).id if key == 'gender' && !Gender.find_by(name: value).nil?
          id_from_value = Age.find_by(name: value).id if key == 'age' && !Age.find_by(name: value).nil?
          id_from_value = Franchise.find_by(name: value).id if key == 'franchise' && !Franchise.find_by(name: value).nil?
          id_from_value = Producttype.find_by(name: value).id if key == 'producttype' && !Producttype.find_by(name: value).nil?
          id_from_value = Brand.find_by(name: value).id  if key == 'brand' && !Brand.find_by(name: value).nil?
          id_from_value = Category.find_by(name: value).id  if key == 'category' && !Category.find_by(name: value).nil?
          id_from_value = Sport.find_by(name: value).id if key == 'sport' && !Sport.find_by(name: value).nil?
        end
        results = results.public_send(key, id_from_value) if id_from_value.present?
      end
      results
    end
  end
end
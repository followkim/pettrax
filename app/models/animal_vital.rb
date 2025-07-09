class AnimalVital < ApplicationRecord
	belongs_to :animal
	belongs_to :vital


  def normalize_blank_values
    attributes.each do |column, value|
      self[column] = nil if value.blank? && value != false
    end
  end

end

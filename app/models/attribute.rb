class Attribute < ApplicationRecord
  has_many :animal_attributes, dependent: :destroy
  has_many :animmals, through: :animal_attributes
end









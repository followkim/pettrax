class Vital < ApplicationRecord
  has_many :animal_vitals, dependent: :destroy
  has_many :animals, through: :animal_vital
  belongs_to :species, optional: true
end

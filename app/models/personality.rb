class Personality < ApplicationRecord
  has_many :animal_personalities, dependent: :destroy
  has_many :animals, through: :animal_personality

end

class Animal < ApplicationRecord

  belongs_to :microchip, optional: true
  belongs_to :gender, optional: true
  belongs_to :species
  belongs_to :status, optional: true

  has_many :transfers
  has_many :vitals
  has_many :animal_personalities, dependent: :destroy
  has_many :personalities, through: :animal_personalities

  has_many :animal_vitals, dependent: :destroy
  has_many :vitals, through: :animal_vitals



  validates :name, :species, presence: true
  before_save :normalize_blank_values
  
  def normalize_blank_values
    attributes.each do |column, value|
      self[column] = nil if value.blank? && value != false
    end
  end
end

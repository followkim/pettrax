class Species < ApplicationRecord
	has_many :animals
	has_many :vitals
end

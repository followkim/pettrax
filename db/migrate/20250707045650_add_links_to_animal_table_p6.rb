class AddLinksToAnimalTableP6 < ActiveRecord::Migration[8.0]
  def change
        add_reference :animals, :microchips, foreign_key: true
        add_reference :animals, :species, foreign_key: true
        add_reference :animals, :genders, foreign_key: true

  end
end

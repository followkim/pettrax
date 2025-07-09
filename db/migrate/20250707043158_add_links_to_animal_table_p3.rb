class AddLinksToAnimalTableP3 < ActiveRecord::Migration[8.0]
  def change

        change_column :species, :id, :primary_key
        change_column :gender, :id, :primary_key



  end
end

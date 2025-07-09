class AddLinksToAnimal < ActiveRecord::Migration[8.0]
  def change
    remove_column :animals, :microchip_id, :int
    remove_column :animals, :species, :string
    remove_column :animals, :gender, :string

    drop_table :Gender
    drop_table :Species

  end
end

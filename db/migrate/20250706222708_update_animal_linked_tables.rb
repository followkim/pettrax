class UpdateAnimalLinkedTables < ActiveRecord::Migration[8.0]
  def change

        change_column :genders, :id, :string
        change_column :species, :id, :string

  end
end

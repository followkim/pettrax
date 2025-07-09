class AddGenderToAnimal < ActiveRecord::Migration[8.0]
  def change
    add_column :animals, :gender, :string
  end
end

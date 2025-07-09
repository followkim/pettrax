class AddColumnsToAnimal < ActiveRecord::Migration[8.0]
  def change
    add_column :animals, :dob, :datetime
    add_column :animals, :breed, :datetime
    add_column :animals, :markings, :datetime
    add_column :animals, :isFixed, :bool
    add_column :animals, :note, :string
  
  end
end

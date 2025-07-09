class AddColumnsToAnimal2 < ActiveRecord::Migration[8.0]
  def change
    add_column :animals, :isHypo, :boolean, default:false
    add_column :animals, :kids, :boolean, default:false
    add_column :animals, :dogs, :boolean, default:false
    add_column :animals, :cats, :boolean, default:false
    add_column :animals, :microchipNumber, :string
    add_column :animals, :dateimplated, :datetime
    add_column :animals, :species, :char
  end
end

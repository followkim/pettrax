class AddDtColumn < ActiveRecord::Migration[8.0]
  def change
	add_column :animal_vitals, :dt, :datetime, null: false
	add_column :animal_vitals, :note, :string
  end
end

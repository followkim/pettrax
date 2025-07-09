class CreateAnimalVitals < ActiveRecord::Migration[8.0]
  def change
    create_table :animal_vitals do |t|
	t.float :value
	t.references :animal, null: false, foreign_key: true 
	t.references :vital, null: false, foreign_key: true
      t.timestamps
    end
  end
end

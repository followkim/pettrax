class CreateAnimalPersonalities < ActiveRecord::Migration[8.0]
  def change
    create_table :animal_personalities do |t|
	t.references :animal, null: false, foreign_key: true
      t.references :personality, null: false, foreign_key: true
      t.timestamps
    end
  end
end

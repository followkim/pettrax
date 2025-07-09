class AddPersonality < ActiveRecord::Migration[8.0]
  def change
	# Migration for creating the orders table with a foreign key

def change
    create_table :animal_attributes do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :attribute, null: false, foreign_key: true

      t.timestamps
    end

    end
  end
end

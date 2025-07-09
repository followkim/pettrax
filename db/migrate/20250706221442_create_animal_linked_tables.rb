class CreateAnimalLinkedTables < ActiveRecord::Migration[8.0]
  def change
    create_table :status do |t|
      t.string :name
      t.timestamps
    end
    create_table :gender do |t|
      t.string :name
      t.timestamps
    end
    create_table :species do |t|
      t.string :name
      t.timestamps
    end
    create_table :microship do |t|
      t.string :name
      t.timestamps
    end
    add_column :animals, :microchip_id, :int


  end
end

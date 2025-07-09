class CreatePersonalities < ActiveRecord::Migration[8.0]
  def change
    create_table :personalities do |t|
      t.string :name

      t.timestamps
    end
  end
end

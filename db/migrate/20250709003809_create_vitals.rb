class CreateVitals < ActiveRecord::Migration[8.0]
  def change
    create_table :vitals do |t|
      t.string :name

      t.timestamps
    end
  end
end

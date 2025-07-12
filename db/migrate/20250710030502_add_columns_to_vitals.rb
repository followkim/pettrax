class AddColumnsToVitals < ActiveRecord::Migration[8.0]
  def change

        add_column :vitals, :hi, :integer
        add_column :vitals, :low, :integer
	add_reference :vitals, :species, index: true, null: true
  end
end

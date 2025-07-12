class AddUnitstoVitals < ActiveRecord::Migration[8.0]
  def change
     add_column :vitals, :short_name, :string
     add_column :vitals, :units, :string
     change_column :vitals, :temperature, :float
  end
end

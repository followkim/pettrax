class FixColumnTypes < ActiveRecord::Migration[8.0]
  def change
	change_column :animals, :breed, :string
	change_column :animals, :markings, :string
  end
end

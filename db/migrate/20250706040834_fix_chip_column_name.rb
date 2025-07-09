class FixChipColumnName < ActiveRecord::Migration[8.0]
  def change
	rename_column :animals, :dateimplated, :dateImplanted

  end
end

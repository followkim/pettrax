class AddAttachmentToAnimal < ActiveRecord::Migration[8.0]
  def change
	add_column :animals, :photo, :attachment
  end
end

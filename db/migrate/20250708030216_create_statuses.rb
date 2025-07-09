class CreateStatuses < ActiveRecord::Migration[8.0]
  def change
    create_table :statuses do |t|
      t.string :name
      t.timestamps
    end
      add_reference :animals, :statuses, foreign_key: true
  end
end

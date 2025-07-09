class AddDefaultToStatus < ActiveRecord::Migration[8.0]
  def change

	change_column_default :animals, :statuses_id, from: nil, to: 3 # pending eval
  end
end

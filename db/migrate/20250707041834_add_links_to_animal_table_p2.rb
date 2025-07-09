class AddLinksToAnimalTableP2 < ActiveRecord::Migration[8.0]
  def change
	create_table :species do |t|
		t.string :name
	      	t.timestamps
	end

	create_table :gender do |t|
		t.string :name
	      	t.timestamps
	end

  end
end

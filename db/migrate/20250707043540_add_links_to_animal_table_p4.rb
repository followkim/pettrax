class AddLinksToAnimalTableP4 < ActiveRecord::Migration[8.0]
	 
       drop_table :Gender

       create_table :genders do |t|
                t.string :name
                t.timestamps
        end

      change_column :genders, :id, :primary_key
 
end

class AddLinksToAnimalTableP5 < ActiveRecord::Migration[8.0]
  def change
       drop_table :Genders 

       create_table :genders do |t|
                t.string :name
                t.timestamps
        end

      change_column :genders, :id, :primary_key
  end
end

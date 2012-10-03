class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :store_name
      t.string :image
      t.integer :location_id

      t.timestamps
    end
  end
end

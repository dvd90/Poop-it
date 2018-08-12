class CreateToilets < ActiveRecord::Migration[5.2]
  def change
    create_table :toilets do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :picture
      t.integer :price
      t.integer :owner_id

      t.timestamps
    end
  end
end

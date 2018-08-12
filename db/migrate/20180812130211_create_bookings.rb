class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.text :review
      t.integer :rating
      t.integer :owner_id
      t.integer :renter_id
      t.references :toilet, foreign_key: true

      t.timestamps
    end
  end
end

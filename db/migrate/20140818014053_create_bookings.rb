class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.belongs_to :slot
    	t.integer :size
    end
  end
end

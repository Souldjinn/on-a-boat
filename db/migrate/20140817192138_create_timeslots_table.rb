class CreateTimeslotsTable < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
    	t.integer :start_time
    	t.integer :duration
    	t.integer :availability 
    	t.integer :customer_count
    end
  end
end

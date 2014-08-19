class CreateSlotsTable < ActiveRecord::Migration
  def change
    create_table :slots do |t|
    	t.datetime :start_time
    	t.integer :duration
    	t.integer :availability , :default => 0
    	t.integer :customer_count, :default => 0
    end
  end
end

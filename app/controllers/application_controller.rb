class ApplicationController < ActionController::Base
	before_filter :set_headers


  def new_availability(slot_id, booking_size)
  	slot = Slot.find(slot_id)
  	slots_boats = slot.boats.order(capacity: :desc)
  	if( (booking_size.to_i > slots_boats[1].capacity))
  		slot.update_attributes(availability: slots_boats[1].capacity)
  		slot.add_customers(booking_size)
  		assigned_boat = Assignment.where(slot_id: slot.id, boat_id: slots_boats[0].id)
  		assigned_boat.first.destroy
  	end

  end

  private

  def set_headers
		    headers['Access-Control-Allow-Origin'] = '*'
  end

end

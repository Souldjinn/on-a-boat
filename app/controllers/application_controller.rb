class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def new_availability(slot_id, booking_size)
  	slot = Slot.find(slot_id)
  	slots_boats = slot.boats.order(capacity: :desc)
  	if( (booking_size.to_i > slots_boats[1].capacity))
  		slot.update_attributes(availability: slots_boats[1].capacity)
  		assigned_boat = Assignment.where(slot_id: slot.id, boat_id: slots_boats[0].id)
  		assigned_boat.destroy
  	end

  end


end

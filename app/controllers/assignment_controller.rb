class AssignmentController < ApplicationController

	def create
			slot = Slot.find(params[:timeslot_id])
			boat = Boat.find(params[:boat_id])

		if (slot && boat)
			Assignment.create(slot_id: params[:timeslot_id], boat_id: params[:boat_id])
			slot.update_attributes(availability: boat.capacity) if (boat.capacity > slot.availability)

		else
			render json: "You have requested invalid boat or timeslot"
		end

		render nothing: true
	end


end
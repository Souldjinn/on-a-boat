class AssignmentController < ApplicationController

	def create

		if (Slot.find(params[:timeslot_id]) && Boat.find(params[:boat_id]))
			Assignment.create(slot_id: params[:timeslot_id], boat_id: params[:boat_id])
		else
			render json: "You have requested invalid boat or timeslot"
		end

		render json: "success"
	end


end
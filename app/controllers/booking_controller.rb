class BookingController < ApplicationController
	def create
		slot = Slot.find(params[:timeslot_id])
		if (params[:size].to_i > slot.availability.to_i )
			render plain: "Slot can not take that many people"
		else
			new_booking = Booking.create(slot_id: slot.id, size: params[:size])
			new_availability(slot.id, params[:size])
			render json: new_booking
		end
	end
end
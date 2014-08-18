class SlotController < ApplicationController
	def create
		@new_slot = Slot.create(start_time: params[:timeslot][:start_time], duration: params[:timeslot][:duration])
		render json: @new_slot
	end

	def show
		@all_slots = Slot.all
		render json: @all_slots
	end
end
class SlotController < ApplicationController
	def create
		@new_slot = Slot.create(start_time: params[:start_time], duration: params[:duration])
		render json: @new_slot
	end

	def show
		@all_slots = Slot.all
		render json: @all_slots
	end
end
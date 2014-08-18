class SlotController < ApplicationController
	def create
		puts params
		@return_slot = Slot.create(start_time: params[:start_time], duration: params[:duration])
		render json: @return_slot
	end

	def show
		@all_slots = Slot.all
		render json: @all_slots
	end
end
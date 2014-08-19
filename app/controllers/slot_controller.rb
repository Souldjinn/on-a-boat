class SlotController < ApplicationController
	def create
		starting_time = params[:timeslot][:start_time]
		starting_time = Time.at(starting_time.to_i).to_datetime

		@new_slot = Slot.create(start_time: starting_time, duration: params[:timeslot][:duration])
		render json: @new_slot.to_json(:include =>:boats)
	end

	def show
		date = params[:date]
		date = date.split("-")
		date.map!{|x| x.to_i}
		date = Date.new(date[0], date[1], date[2])


		@dated_slots = Slot.where(start_time: date.beginning_of_day..date.end_of_day)
		render json: @dated_slots
	end
end
class BoatController < ApplicationController
	def create
		@new_boat = Boat.create(name: params[:name], capacity: params[:capacity])
		render json: @new_boat
	end

	def show
		@all_boats = Boat.all
		render json: @all_boats
	end
end
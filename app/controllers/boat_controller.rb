class BoatController < ApplicationController
	def create
		new_boat = Boat.create(capacity: params[:boat][:capacity], name: params[:boat][:name])
		render json: new_boat
	end

	def show
		all_boats = Boat.all
		render json: all_boats
	end
end
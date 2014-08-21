class Slot < ActiveRecord::Base
	has_many :assignments
	has_many :boats, through: :assignments
	has_many :bookings

	def add_customers(booking_size)
		self.customer_count += booking_size.to_i
		self.save
	end
end


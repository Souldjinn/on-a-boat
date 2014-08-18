class Slot < ActiveRecord::Base
	has_many :assignments
	has_many :boats, through: :assignments
	has_many :bookings
end


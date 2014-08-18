class Boat < ActiveRecord::Base
	has_many :assignments
	has_many :slots, through: :assignments
end

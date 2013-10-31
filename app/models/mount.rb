class Mount < ActiveRecord::Base
	has_many :routes
	#belongs_to: :region
end

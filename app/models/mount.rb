class Mount < ActiveRecord::Base
	has_many :routes
  mount_uploader :image, MountImageUploader
	#belongs_to: :region
end

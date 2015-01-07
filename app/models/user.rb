class User < ActiveRecord::Base
	validates :facebook_id, :name, :birthday, :image, presence: true
	# validates :facebook_id, uniqueness: true
	# has_many :tabs, :user_ratings
	# validates_associated :tabs, :user_ratings
end

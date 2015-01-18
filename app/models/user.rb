class User < ActiveRecord::Base
	validates :facebook_id, :first_name, :last_name, :birthday, :image, presence: true
	# validates :facebook_id, uniqueness: true
	has_many :tabs
	# validates_associated :tabs, :user_ratings
  def self.by_location location
    self.select { |u| u.most_recent_location == location }
  end

  def most_recent_location
    # TODO. Location translator/geocoder/
    # Need a model that will translate coordinates to cities,neighborhoods, etc
    # ideally return something like this here:
    # Locator.new.city location_history.pop
    "san francisco"
  end
end

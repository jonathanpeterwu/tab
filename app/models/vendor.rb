class Vendor < ActiveRecord::Base
	validates :name, :address, presence: true
	# has_many :tabs, :vendor_ratings
	# has_many_belongs_to :items
  #   validates_associated :tabs, :vendor_ratings


##TODO need to store address in a way that can be easily localized/looked up by city.
  def locate
    self.address.downcase
  end
end
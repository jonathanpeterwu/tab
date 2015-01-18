class Vendor < ActiveRecord::Base
	validates :name, :street_address1, :city, :state, :zip, presence: true
	# has_many :tabs, :vendor_ratings
	# has_many_belongs_to :items
  #   validates_associated :tabs, :vendor_ratings

  has_many :items

  def locate
    self.city.downcase.gsub(' ','-')
  end
end
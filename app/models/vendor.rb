class Vendor < ActiveRecord::Base
	validates :name, :description, :address, :image, presence :true
	has_many :tabs, :vendor_ratings
	has_many_belongs_to :items
    validates_associated :tabs, :vendor_ratings
end
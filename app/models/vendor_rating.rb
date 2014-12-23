class VendorRating < ActiveRecord::Base
	validates :rating, presence :true
	belongs_to :user, :vendor
end
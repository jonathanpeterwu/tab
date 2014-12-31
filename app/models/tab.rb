class Tab < ActiveRecord::Base
	validates :date_of_purchase, :total, presence: true
	# belongs_to :user, :vendor
end
class Tab < ActiveRecord::Base
	attr_reader :user, :vendor
	validates :date_of_purchase, :total, presence: true
end
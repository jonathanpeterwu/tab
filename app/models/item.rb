class Item < ActiveRecord::Base
	validates :title, :description, :price, presence: true
	has_many :vendors
end
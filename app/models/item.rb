class Item < ActiveRecord::Base
	validates :title, :description, :price, presence: true
	belongs_to :vendor
end
class Item < ActiveRecord::Base
	validates :title, :description, :price, presence :true
	has_many_belongs_to_many :vendors
end
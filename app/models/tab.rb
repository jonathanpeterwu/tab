class Tab < ActiveRecord::Base
	attr_reader :user, :vendor
	validates :date_of_purchase, :total, presence: true

  belongs_to :vendor
  belongs_to :user

  def open?
    self.paid == false
  end
end
class VendorRatingsMigration < ActiveRecord::Migration
  def change
  	create_table :vendor_ratings do |t|
  		t.integer :rating
  		t.belongs_to :vendor
  		t.belongs_to :user
  	end
  end
end

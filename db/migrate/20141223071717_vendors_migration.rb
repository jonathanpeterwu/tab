class VendorsMigration < ActiveRecord::Migration
  def change
  	create_table :vendors do |t|
  		t.string :name
  		t.string :description
  		t.string :address
  		t.string :image
  		t.float :rating
  	end
  end
end

class UpdateVendorAddressStructure < ActiveRecord::Migration
  def change
    change_table :vendors do |t|
      t.string :street_address1
      t.string :street_address2
      t.string :city
      t.string :state
      t.string :zip
      t.remove :address
    end
  end
end

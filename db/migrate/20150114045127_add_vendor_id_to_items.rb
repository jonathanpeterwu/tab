class AddVendorIdToItems < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.belongs_to :vendor
    end
  end
end

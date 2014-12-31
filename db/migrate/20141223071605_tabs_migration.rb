class TabsMigration < ActiveRecord::Migration
  def change
  	create_table :tabs do |t|
  		t.integer :date_of_purchase
  		t.float :total
  		t.belongs_to :user
  		t.belongs_to :vendor
  		t.text :item_list, array: true, defauilt: []
  		t.boolean :paid, default: false
  	end
  end
end

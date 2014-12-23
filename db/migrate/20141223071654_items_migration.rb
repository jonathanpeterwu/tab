class ItemsMigration < ActiveRecord::Migration
  def change
  	create_table :items do |t|
  		t.string :title
  		t.string :description
  		t.float :price
    end
  end
end

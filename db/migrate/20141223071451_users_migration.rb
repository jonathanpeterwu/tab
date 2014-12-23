class UsersMigration < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :name
  		t.date :birthday
  		t.string :image
  		t.string :facebook_id
  		t.float :rating
  	end
  end
end

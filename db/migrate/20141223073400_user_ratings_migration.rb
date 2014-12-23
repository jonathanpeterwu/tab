class UserRatingsMigration < ActiveRecord::Migration
  def change
  	create_table :user_ratings do |t|
  		t.integer :rating
  		t.belongs_to :user
  		t.belongs_to :vendor
  	end
  end
end

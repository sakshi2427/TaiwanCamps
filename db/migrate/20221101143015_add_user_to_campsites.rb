class AddUserToCampsites < ActiveRecord::Migration[7.0] 
  def change 
    add_reference :campsites, :user, foreign_key: true 
  end 
end 
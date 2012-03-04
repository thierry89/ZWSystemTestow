class AddUserIdToPodejscies < ActiveRecord::Migration
  def up
    add_column :podejscies, :user_id, :integer
  end
  def down
    remove_column :podejscies, :user_id 
  end
end

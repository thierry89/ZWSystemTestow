class AddTestIdToPodejscies < ActiveRecord::Migration
  def up
    add_column :podejscies, :test_id, :integer
  end
  def down
    remove_column :podejscies, :test_id 
  end
end

class AddColumnTestIdToPytanies < ActiveRecord::Migration
  def up
    add_column :pytanies, :test_id, :integer
  end
  def down
    remove_column :pytanies, :test_id 
  end
end

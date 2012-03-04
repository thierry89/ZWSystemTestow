class AddDzialIdToTests < ActiveRecord::Migration
  def up
     add_column :tests, :dzial_id, :integer
  end
  def down
    remove_column :tests, :dzial_id
  end
end

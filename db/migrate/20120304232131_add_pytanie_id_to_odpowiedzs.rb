class AddPytanieIdToOdpowiedzs < ActiveRecord::Migration
  def up
    add_column :odpowiedzs, :pytanie_id, :integer
  end
  def down
    remove_column :odpowiedzs, :pytanie_id
  end
end

class CreatePodejscies < ActiveRecord::Migration
  def up
    create_table :podejscies do |t|
      t.date :data
      t.boolean :zaliczony
      t.integer :wynik
      t.timestamps
    end
  end
  
  def down
    drop_table :podejscies    
  end
end

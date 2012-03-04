class CreateTests < ActiveRecord::Migration
  def self.up
    create_table :tests do |t|
      t.string :nazwa
      t.string :poziom
      t.date :data_otwarcia
      t.date :data_zamkniecia
      t.float :prog
      t.timestamps
    end
  end
  
  def self.down
    drop_table :tests
  end
end

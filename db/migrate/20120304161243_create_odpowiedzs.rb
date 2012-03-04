class CreateOdpowiedzs < ActiveRecord::Migration
  def self.up
    create_table :odpowiedzs do |t|
      t.text :tresc
      t.string :roziwazanie
      t.integer :nr
      t.timestamps
    end
  end
  
  def self.down
    drop_table :odpowiedzs 
  end
end

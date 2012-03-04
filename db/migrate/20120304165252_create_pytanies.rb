class CreatePytanies < ActiveRecord::Migration
  def self.up
    create_table :pytanies do |t|
      t.text :tresc
      t.integer :punkty
      t.timestamps
    end
  end
  
  def self.down
    droip_table :pytanies
  end
end

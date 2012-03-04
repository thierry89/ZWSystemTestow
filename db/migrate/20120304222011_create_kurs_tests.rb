class CreateKursTests < ActiveRecord::Migration
  def up
    create_table :kurs_tests do |t|
      t.integer :kurs_id
      t.integer :test_id
      
      t.timestamps
    end
  end
  
  def down
    drop_table :kurs_tests
  end
end

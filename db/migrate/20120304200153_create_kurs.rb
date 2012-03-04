class CreateKurs < ActiveRecord::Migration
  def up
    create_table :kurs do |t|
      t.string :nazwa
      t.timestamps
    end
  end
  
  def down
    drop_table :kurs
  end
end

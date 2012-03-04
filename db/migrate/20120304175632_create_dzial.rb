class CreateDzial < ActiveRecord::Migration
  def up
    create_table :dzials do |t|
      t.string :nazwa      
      t.timestamp
    end
  end

  def down
    drop_table :dzials
  end
end

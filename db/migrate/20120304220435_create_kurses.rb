class CreateKurses < ActiveRecord::Migration
  def change
    create_table :kurses do |t|
      t.string :nazwa
      t.timestamps
    end
  end
end

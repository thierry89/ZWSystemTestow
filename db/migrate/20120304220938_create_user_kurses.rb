class CreateUserKurses < ActiveRecord::Migration
  def up
    create_table :user_kurses do |t|
       t.integer :user_id
       t.integer :kurs_id
       t.integer :realizacja
    end
  end

  def down
    drop_table :user_kurses
  end
end

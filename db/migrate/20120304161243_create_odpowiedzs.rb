class CreateOdpowiedzs < ActiveRecord::Migration
  def change
    create_table :odpowiedzs do |t|

      t.timestamps
    end
  end
end

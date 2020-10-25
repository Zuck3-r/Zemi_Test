class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :mail, null: false
      t.string :room
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps
    end
  end
end

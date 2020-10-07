class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.string :room, null: false
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps
    end
  end
end

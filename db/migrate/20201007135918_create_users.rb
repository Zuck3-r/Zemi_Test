class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :uid, null: false
      t.string :mail, null: false

      t.timestamps
    end
  end
end

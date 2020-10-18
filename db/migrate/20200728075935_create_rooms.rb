class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.date :date, null: false
      # t.string :name, null: false
      # t.integer :motivation_id, null: false
      t.timestamps
    end
  end
end

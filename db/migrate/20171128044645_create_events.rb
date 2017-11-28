class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :hour
      t.integer :day_id

      t.timestamps
    end
  end
end

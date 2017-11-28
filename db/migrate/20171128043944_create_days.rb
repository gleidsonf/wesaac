class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.string :date
      t.string :dayOfWeek

      t.timestamps
    end
  end
end
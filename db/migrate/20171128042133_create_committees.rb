class CreateCommittees < ActiveRecord::Migration[5.1]
  def change
    create_table :committees do |t|
      t.string :name
      t.string :lastname
      t.string :institution
      t.string :country

      t.timestamps
    end
  end
end

class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.references :flight, index: true
      t.string :name
      t.integer :passport

      t.timestamps null: false
    end
    add_foreign_key :passengers, :flights
  end
end

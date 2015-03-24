class CreateArrivals < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.references :flight, index: true
      t.datetime :date
      t.integer :status

      t.timestamps null: false
    end
    add_foreign_key :arrivals, :flights
  end
end

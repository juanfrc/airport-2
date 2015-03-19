class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :number
      t.references :airline, index: true

      t.timestamps null: false
    end
    add_foreign_key :flights, :airlines
  end
end

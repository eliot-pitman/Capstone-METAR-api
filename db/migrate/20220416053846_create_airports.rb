class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :iata
      t.string :icao
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end

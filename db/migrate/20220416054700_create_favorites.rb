class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.string :user_id
      t.string :airport_id
      t.string :airport_iata
      t.string :airport_icao

      t.timestamps
    end
  end
end

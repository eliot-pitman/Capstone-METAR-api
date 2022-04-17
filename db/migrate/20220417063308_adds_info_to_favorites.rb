class AddsInfoToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :airport_name, :string
  end
end

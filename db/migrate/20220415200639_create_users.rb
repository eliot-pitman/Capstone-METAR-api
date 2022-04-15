class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :username
      t.string :home_airport
      t.string :avitar

      t.timestamps
    end
  end
end

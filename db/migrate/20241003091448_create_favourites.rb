class CreateFavourites < ActiveRecord::Migration[7.1]
  def change
    create_table :favourites do |t|
      t.integer :car_id

      t.timestamps
    end
  end
end

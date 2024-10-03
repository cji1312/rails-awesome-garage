class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :fuel
      t.integer :year
      t.integer :owner_id

      t.timestamps
    end
  end
end

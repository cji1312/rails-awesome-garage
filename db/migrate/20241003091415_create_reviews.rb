class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.integer :car_id

      t.timestamps
    end
  end
end

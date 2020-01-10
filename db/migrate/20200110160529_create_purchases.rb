class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :location_id
      t.integer :user_id
      t.integer :wine_id
      t.string :comment
      t.integer :star

      t.timestamps
    end
  end
end

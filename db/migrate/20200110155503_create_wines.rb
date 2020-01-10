class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :country
      t.integer :color_id
      t.integer :taste_id
      t.binary :label

      t.timestamps
    end
  end
end

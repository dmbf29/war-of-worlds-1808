class CreateAliens < ActiveRecord::Migration[7.1]
  def change
    create_table :aliens do |t|
      t.string :name
      t.string :species
      t.string :image_url
      t.references :planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end

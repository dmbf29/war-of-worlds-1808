class CreateHolsters < ActiveRecord::Migration[7.1]
  def change
    create_table :holsters do |t|
      t.references :alien, null: false, foreign_key: true
      t.references :weapon, null: false, foreign_key: true

      t.timestamps
    end
  end
end

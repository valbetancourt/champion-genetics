class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.string :category
      t.string :breed
      t.decimal :height
      t.string :pedigree
      t.text :accomplishments
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

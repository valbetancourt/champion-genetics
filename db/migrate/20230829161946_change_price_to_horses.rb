class ChangePriceToHorses < ActiveRecord::Migration[7.0]
  def change
    change_column :horses, :price, :integer
  end
end

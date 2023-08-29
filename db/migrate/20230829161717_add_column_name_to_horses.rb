class AddColumnNameToHorses < ActiveRecord::Migration[7.0]
  def change
    add_column :horses, :name, :string
  end
end

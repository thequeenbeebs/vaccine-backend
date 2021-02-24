class AddCoordinates < ActiveRecord::Migration[6.0]
  def change
    add_column :vaccination_centers, :coordinates, :text, array: true, default: []
  end
end

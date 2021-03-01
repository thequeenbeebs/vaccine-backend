class Add < ActiveRecord::Migration[6.0]
  def change
    remove_column :vaccination_centers, :days_open, :text
    add_column :vaccination_centers, :days_closed, :text, array: true, default: []
  end
end

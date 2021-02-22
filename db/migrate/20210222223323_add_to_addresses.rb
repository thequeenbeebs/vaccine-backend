class AddToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :vaccination_centers, :city, :string
    add_column :vaccination_centers, :state, :string
    add_column :vaccination_centers, :zip_code, :string
  end
end

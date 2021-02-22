class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.integer :vaccination_center_id
      t.integer :vaccine_id
      t.timestamps
    end
  end
end

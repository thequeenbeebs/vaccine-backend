class CreateVaccinationCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccination_centers do |t|
      t.string :name 
      t.string :address
      t.string :phone_number
      t.text :days_open, array: true, default: []
      t.datetime :opening_time
      t.datetime :closing_time
      t.integer :appointments_per_hour
      t.timestamps
    end
  end
end

class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :vaccination_center_id
      t.integer :vaccine_id
      t.datetime :appointment_time
      t.timestamps
    end
  end
end

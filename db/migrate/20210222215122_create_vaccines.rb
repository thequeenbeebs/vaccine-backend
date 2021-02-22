class CreateVaccines < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccines do |t|
      t.string :name
      t.integer :doses_required
      t.integer :weeks_between_doses
      t.timestamps
    end
  end
end

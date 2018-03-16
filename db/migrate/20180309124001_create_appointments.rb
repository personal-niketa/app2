class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :physician_id
      t.integer :patient_id
      t.references :physician, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

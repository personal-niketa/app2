class AddColumnToAppointments < ActiveRecord::Migration
  def change
  	add_column :appointments, :appointment_date, :string
  end
end

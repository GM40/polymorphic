class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :doctor_id ,null: false, foreign_key: true
      t.integer :patient_id ,null: false, foreign_key: true

      t.timestamps
    end
  end
end

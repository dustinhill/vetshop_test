class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.datetime :date
      t.boolean :requires_reminder
      t.text :reason_for_visit
      t.integer :pet_id
      t.integer :doctor_id
      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end

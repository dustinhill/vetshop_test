class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :school
      t.integer :years_in_practice

      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end

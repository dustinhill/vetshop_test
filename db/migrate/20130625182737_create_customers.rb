class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
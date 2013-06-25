class CreatePets < ActiveRecord::Migration
  def self.up
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.integer :age
      t.float :weight
      t.date :last_visit
      t.integer :customer_id
      t.timestamps
    end
  end

  def self.down
    drop_table :pets
  end
end

class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.integer, :id
      t.integer, :person_id
      t.integer, :phone
      t.string :phone_type

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end

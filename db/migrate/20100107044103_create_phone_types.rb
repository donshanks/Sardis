class CreatePhoneTypes < ActiveRecord::Migration
  def self.up
    create_table :phone_types do |t|
      t.integer, :id
      t.string, :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :phone_types
  end
end

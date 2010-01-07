class CreateFamilies < ActiveRecord::Migration
  def self.up
    create_table :families do |t|
      t.integer :id
      t.string, :family_name
      t.string, :address1
      t.string, :address2
      t.string, :city
      t.string, :state
      t.string :zip_code

      t.timestamps
    end
  end

  def self.down
    drop_table :families
  end
end

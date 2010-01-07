class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.integer, :id
      t.string, :fname
      t.string, :mname
      t.string, :lname
      t.string, :suffix
      t.integer, :family_id
      t.boolean, :married
      t.date, :date_of_birth
      t.date, :date_of_baptism
      t.date, :date_of_dedication
      t.date, :date_of_marriage
      t.string, :status
      t.string :member
      t.boolean :head_of_household

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end

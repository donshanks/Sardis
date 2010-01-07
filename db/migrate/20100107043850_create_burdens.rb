class CreateBurdens < ActiveRecord::Migration
  def self.up
    create_table :burdens do |t|
      t.integer, :id
      t.integer, :person_id
      t.integer :mnistry_id

      t.timestamps
    end
  end

  def self.down
    drop_table :burdens
  end
end

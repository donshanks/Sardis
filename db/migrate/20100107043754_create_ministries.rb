class CreateMinistries < ActiveRecord::Migration
  def self.up
    create_table :ministries do |t|
      t.integer, :id
      t.string, :name
      t.string, :description
      t.string :department_head

      t.timestamps
    end
  end

  def self.down
    drop_table :ministries
  end
end

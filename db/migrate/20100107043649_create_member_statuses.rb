class CreateMemberStatuses < ActiveRecord::Migration
  def self.up
    create_table :member_statuses do |t|
      t.string, :id
      t.string, :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :member_statuses
  end
end

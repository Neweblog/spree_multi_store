class AddPositionToRole < ActiveRecord::Migration
  def self.up
    change_table :roles do |t|
      t.integer :position
      t.index :position
    end
  end

  change_table :roles do |t|
    t.remove :position
  end
end
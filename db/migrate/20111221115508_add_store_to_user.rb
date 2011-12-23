class AddStoreToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.references :store
    end
  end

  change_table :users do |t|
    t.remove :store_id
  end
end
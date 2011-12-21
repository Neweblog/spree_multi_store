class CreateUsersStores < ActiveRecord::Migration
  def self.up
    create_table :users_stores, :id => false do |t|
      t.references :user
      t.references :store
    end
    change_table :users_stores do |t|
      t.index :user_id
      t.index :store_id
    end
  end

  def self.down
    drop_table :users_stores
  end
end
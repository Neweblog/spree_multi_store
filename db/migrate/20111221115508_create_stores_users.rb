class CreateStoresUsers < ActiveRecord::Migration
  def self.up
    create_table :stores_users, :id => false do |t|
      t.references :store
      t.references :user
    end
    change_table :stores_users do |t|
      t.index :store_id
      t.index :user_id
    end
  end

  def self.down
    drop_table :stores_users
  end
end
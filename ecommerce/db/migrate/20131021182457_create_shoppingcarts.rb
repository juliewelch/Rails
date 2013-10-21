class CreateShoppingcarts < ActiveRecord::Migration
  def self.up
    create_table :shoppingcarts do |t|
      t.has_many :items
      t.string :owner

      t.timestamps
    end
  end

  def self.down
    drop_table :shoppingcarts
  end
end

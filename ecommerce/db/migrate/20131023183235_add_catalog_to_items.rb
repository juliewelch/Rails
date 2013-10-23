class AddCatalogToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :catalog_id, :integer
  end

  def self.down
    remove_column :items, :catalog_id
  end
end

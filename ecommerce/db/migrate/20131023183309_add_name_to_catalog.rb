class AddNameToCatalog < ActiveRecord::Migration
  def self.up
    add_column :catalogs, :name, :string
  end

  def self.down
    remove_column :catalogs, :name
  end
end

class RemoveHasManyFromCatalog < ActiveRecord::Migration
  def self.up
    remove_column :catalogs, :has_many
  end

  def self.down
    add_column :catalogs, :has_many, :items
  end
end

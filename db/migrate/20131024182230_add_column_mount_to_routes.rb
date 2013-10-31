class AddColumnMountToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :mount_id, :integer
    add_index :routes, :mount_id
  end
end

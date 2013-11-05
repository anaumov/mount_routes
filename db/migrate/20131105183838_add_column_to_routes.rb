class AddColumnToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :mount_id, :integer
  end
end

class AddColumnMountToRoutes < ActiveRecord::Migration
  def change
  	change_table :routes do |t|
  	t.belongs_to :mounts
  end
  end
end

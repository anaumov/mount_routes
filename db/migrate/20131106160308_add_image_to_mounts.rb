class AddImageToMounts < ActiveRecord::Migration
  def change
    add_column :mounts, :image, :string
  end
end

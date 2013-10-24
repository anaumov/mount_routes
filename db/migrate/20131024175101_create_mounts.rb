class CreateMounts < ActiveRecord::Migration
  def change
    create_table :mounts do |t|
      t.string :title
      t.integer :height
      t.string :region
      t.has_many :routes

      t.timestamps
    end
  end
end

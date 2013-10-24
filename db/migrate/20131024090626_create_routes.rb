class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.string :difficult
      t.string :region
      t.text :description

      t.timestamps
    end
  end
end

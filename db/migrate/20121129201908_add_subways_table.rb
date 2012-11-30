class AddSubwaysTable < ActiveRecord::Migration
  def change
    create_table :subways do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :line
      t.timestamps
    end
  end
end

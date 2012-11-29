class AddSubwaysTable < ActiveRecord::Migration
  def change
  	create_table :subways do |t|
  		t.timestamps
  	end

  end

end

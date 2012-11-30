# == Schema Information
#
# Table name: subways
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :float
#  longitude  :float
#  line       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subway < ActiveRecord::Base
	
end

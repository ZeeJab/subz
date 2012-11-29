# == Schema Information
#
# Table name: subways
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subway < ActiveRecord::Base
	has_many :entrances
end

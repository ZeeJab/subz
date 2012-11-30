# == Schema Information
#
# Table name: lines
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Line < ActiveRecord::Base
	has_and_belongs_to_many :entrances
	# validates :uniqueness => true
end



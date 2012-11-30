# == Schema Information
#
# Table name: entrances
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  lat        :decimal(, )
#  long       :decimal(, )
#  line       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Entrance < ActiveRecord::Base
	belongs_to :subway
	has_and_belongs_to_many :lines
end



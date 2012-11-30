class HomeController < ApplicationController
	def index
		@entrance = Entrance.all
	
	end

	def data
		info = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')
		data = JSON(info.body)

		data["data"].each do |d|

			entrance = d[10]
			lat = d[9][1]
			long = d[9][2]
			line = d[12].gsub(/.{3}Express/, '') 

			entrance = Entrance.create(:name => entrance, :lat => lat, :long => long, :line => line)
			

			lines = line.split('-')

			lines.each do |e|

				line = Line.where(:name => e).first

	        	if line.nil?
	        		Line.create(:name => e)
	        		line = Line.where(:name => e).first
	        		line.entrances << entrance
	        	else
					line.entrances << entrance
				end
      		end	
		end
	end
end



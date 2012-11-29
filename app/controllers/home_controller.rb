class HomeController < ApplicationController
	def index
	end

	def data
		info = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')
		@data = JSON(info.body)


		

		@data["data"].each do |d|

			@entrance = @data["data"][d][10]
			@lat = @data["data"][d][9][1]
			@long = @data["data"][d][9][2]
			@line = @data["data"][d].last

			@entrance = Entrance.create(:name => @entrance, :lat => @lat, :long => @long, :line => @line)
		end
	end

	
end
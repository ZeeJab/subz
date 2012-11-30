class HomeController < ApplicationController
	def index
		@entrance = Entrance.all
		@f = Entrance.where(:line => "F-G")
		@a = Entrance.where(:line => "1-2-3" && '1')
	end

	def data
		info = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')
		@data = JSON(info.body)

		@data["data"].each do |d|

			@entrance = d[10]
			@lat = d[9]
			@long = d[9][2]
			@line = d.last 

			@entrance = Entrance.create(:name => @entrance, :lat => @lat, :long => @long, :line => @line)
			redirect_to show_path

		end

		def get_data

		end

	end

	
end
module ApplicationHelper


	def subway_line(arg)

		@hello = Entrance.where(:line => arg )
		
		

	end


end

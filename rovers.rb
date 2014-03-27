class Rover
	attr_reader :x, :y, :d 
	def initialize(x, y, d)
		@x = x
		@y = y
		@d = d
	end

	def move
		if @d=="N"
			@y += 1
		elsif @d == "E"
			@x += 1
		elsif @d == "S"
			@y -= 1
		elsif @d== "W"
			@x -= 1
		end
	end

	def to_s
		"#{@x},#{@y},#{@d}"
	end

	def turn_right
		if @d == "N"
			@d = "E"
		elsif @d == "E"
			@d = "S"
		elsif @d == "S"
			@d = "W"
		elsif @d == "W"
			@d = "N"
		else
			"What the fuck - Right"
		end
	end
	def turn_left
		if @d == "N"
			@d = "W"
		elsif @d == "W"
			@d = "S"
		elsif @d == "S"
			@d = "E"
		elsif @d == "E"
			@d = "N"
		else
			"What the fuck - Left"
		end
	end
end




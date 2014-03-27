class Rover
	
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
		"#{@x},#{y},#{d}"
	end

	def turn_right
		@d = (@d + 1) % 4
		self
	end
	def turn_left
		@d = (@d -1) % 4
		self
	end
end




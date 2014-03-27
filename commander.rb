require './rovers.rb'

1 2 N
LMLMLMLMM

def parse(instructions)
	
end

class Commander
	X = 0
	Y = 1
	DIRECTION = 2

	def initialize(instructions)

	def create_rover(starting_point)
		coords = starting_point.split(" ")
		@rover = Rover.new(coords[0], coords[1], coords[2])
	end

	def move_rover(move_command)
		move_command.split("").each do |c|
			if c=="L"
				@rover.turn_left
			elsif c=="R"
				@rover.turn_right
			elsif c=="M"
				@rover.move_command
			end
		end
	end
end

commander = Commander.new
commander.create_rover("1 2 N")
commander.move_rover
require './rovers.rb'

instructions1 = "1 2 N 
LMLMLMLMM"

instructions2 = "3 3 E
MMRMMRMRRM"


class Commander
	X = 0
	Y = 1
	DIRECTION = 2

	def initialize(instructions)
		@instructions = instructions
	end
	
	def rovers_go
		arr = @instructions.split("\n")
		start_point = arr[0]
		create_rover(start_point)
		
		move_command = arr[1]
		move_rover(move_command)
		puts "#{@rover.x},#{@rover.y} #{@rover.d}"
	end

	def create_rover(starting_point)
		coords = starting_point.split(" ")
		@rover = Rover.new(coords[0].to_i, coords[1].to_i, coords[2])
	end

	def move_rover(move_command)
		move_command.split("").each do |c|
			if c=="L"
				@rover.turn_left
			elsif c=="R"
				@rover.turn_right
			elsif c=="M"
				@rover.move
			end
		end
	end
end

commander = Commander.new(instructions1)
commander2 = Commander.new(instructions2)
commander.rovers_go
commander2.rovers_go


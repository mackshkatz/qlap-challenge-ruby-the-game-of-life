class World
	def initialize()
		@main_world = new_matrix()
	end

	def new_matrix
		#return 100x100 matrix
		m = []

		100.times do |x|
			m[x] = []

			100.times do |y|
				m[x][y] = Cell.new(x,y)
			end
		end

		return m
	end

	def begin_world
		# get empty matrix
		100.times do
			next_gen()
		end
	end

	def next_gen
		print_matrix()
		update_matrix()
	end

	def print_matrix
		puts @main_world
	end

	def update_matrix
		new_world = new_matrix()
		@main_world.each do |x|
			x.each do |y|
				@main_world.update_life(@main_world)
				@main_world[x][y].alive?
				new_world[x][y] = @main_world[x][y]
			end
		end
		@main_world = new_world
	end
end


class Cell
	def initialize(x,y)
		@x = x
		@y = y
		@life = false
	end

	def update_life(matrix)
		matrix[@x][@y]
		# depending on score, set @life to true or false
		score = matrix[@x-1][@y-1] + matrix[@x][@y-1] + matrix[@x+1][@y-1] + 
				matrix[@x-1][@y] + matrix[@x+1][@y] + matrix[@x-1][@y+1] + 
				matrix[@x][@y+1] + matrix[@x+1][@y+1]
		if score < 2
			@life = false
			#matrix[@x][@y] = 0
		elsif score > 3
			@life = false
			#matrix[@x][@y] = 0
		elsif score == 3
			@life = true
			#matrix[@x][@y] = 1
		else
			@life = true
			#matrix[@x][@y] = 1
		end
	end

	def alive?
		return @life
	end
end

w1 = World.new
# I instantiate the class to create a new World object.
# The initialize method immediately declares the @main_world
# instance variable, calls the new_matrix method and sets the
# instance variable to the return value, which is a multi-
# dimensional array 100x100.
w1.begin_world()
# This is called simply to tell the next_gen method to run 100 times.
# 1. The next_gen method first calls the print_matrix method. This simply
# 'puts' the matrix being stored in the @main_world instance variable.
#  2. The next_gen method then calls the update_matrix method. This
# first declares a new variable new_world and assigns the return value
# of the new_matrix method to it, which is just a 100x100 multi-
# dimensional array. Update_matrix then iterates over each row by iterating
# over each item in the array, where each item is also an array, so it then
# iterates over this inner array. 
w1.nextFrame()
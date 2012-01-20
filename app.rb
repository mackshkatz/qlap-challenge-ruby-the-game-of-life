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

	def print_matrix
		puts @main_world
	end

	def update_matrix
		new_world = new_matrix()
		@main_world.each do |x|
			x.each do |y|
				@main_world[x][y].alive(@main_world)
				new_world[x][y] = @main_world[x][y]
			end
		end
		@main_world = new_world
	end

	def next_gen
		print_matrix()
		update_matrix()
	end


	def nextFrame
		#iterate through each element and determine
		# whether cell is dead or alive

		@m.each do |x|
			x.each do |y|
				if y == 1

				end
			end
		end
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
		score = matrix[@x-1][@y-1] + matrix[@x][@y-1] + matrix[@x+1][@y-1] + matrix[@x-1][@y] + matrix[@x+1][@y] + matrix[@x-1][@y+1] + matrix[@x][@y+1] + matrix[@x+1][@y+1]
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
		@life
	end
end

w1 = World.new 
w1.beginWorld
w1.nextFrame()
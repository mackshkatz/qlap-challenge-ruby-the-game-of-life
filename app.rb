class World
	def initialize()

	end

	def beginWorld
		world = ""
		@m = []

		100.times do |x|
			@m[x] = []

			100.times do |y|
				@m[x][y] = 0
				world += y.to_s
			end

			world += "\n"
		end

		
	end

	def nextFrame
		#iterate through each element and determine
		# whether cell is dead or alive

		# score = #{f[x-1][y-1]} + #{f[x][y-1]} + 
		# 		  #{f[x+1][y-1]} + #{f[x-1][y]} + #{f[x+1][y]} +
		# 		  #{f[x-1][y+1]} + #{f[x][y+1]} + #{f[x+1][y+1]}
		@m.each do |x|
			x.each do |y|		
				# if y == 1
				# 	if score < 2
				# 		y = 0
				# 	elsif score > 3
				# 		y = 0
				# 	else
				# 		y = 1
				# 	end
				# end

				# if y == 0 && score = 3
				# 	y = 1
				# end
			end
		end
	end
end


class Cell < World
	def dead

	end

	def alive

	end
end

w1 = World.new 
w1.beginWorld
w1.nextFrame()
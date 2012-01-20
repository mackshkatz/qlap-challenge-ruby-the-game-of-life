class World
	def initialize()
		# @life_array = Array.new(width) { Array.new(height) }
	end

	def buildEmptyMatrix
		world = ""
		f = []




		100.times do |x|

			f[x] = []

			100.times do |y|
				f[x][y] = 0
				world += 0.to_s
			end

			world += "\n"
		


		end

		print world

		# @life_array = [ [ 0,0,0 ],
		# 				[ 0,0,0 ], 
		# 				[ 0,0,0 ] ]								]
	end

end


class Cell < World

end

w1 = World.new 
w1.buildEmptyMatrix()








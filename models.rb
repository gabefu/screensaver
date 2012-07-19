=begin
it'll need:
    - to be initialized with a filename, x and y arguments, and a game window
    - to keep track of its own x and y attributes
    - to have a `move` method that wraps up random movement
    - to have a `draw` method that wraps up drawing to its location
=end

require 'gosu'

class MoveableImage
	include Gosu
	attr_accessor :win,:img, :x, :y
	def initialize win, filename, x, y
		@win = win
		@x, @y = x, y
		@img = Image.new(win, filename, true)
	end
	def move
	end
	def draw
		@img.draw(@x,@y,1)
	end
	
	def to_s
		"MoveableImage at x:#{@x}, y:#{@y}"
	end
end
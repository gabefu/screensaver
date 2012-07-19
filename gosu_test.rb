require 'gosu'
require './helpers.rb'

class GameWindow < Gosu::Window
	include Helpers
	attr_accessor :y
	
	def initialize
		@x, @y = 0, 0
		@width = get_width 'CONFIG'
		
		super @width, 480, false
		self.caption = "Gosu Tutorial Game"
		@bg = Gosu::Image.new(self, "pic2.gif", true)
		@edge = if @bg.width > @width then @bg.width else @width end
	end
	
	def update
		@x = @x+1
		@x = 0 if @x==@edge
	end
	
	def draw
		@bg.draw(@x-@edge,@y,0)
		@bg.draw(@x,@y,0)
	end
end

window = GameWindow.new
window.y = 20
window.show
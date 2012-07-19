require 'gosu'
require './helpers.rb'
require './models.rb'

class GameWindow < Gosu::Window
	include Helpers
	attr_accessor :y
	include Gosu
	
	def initialize
		
		super 640, 480, false
		self.caption = "Multi-image funtime!"
		@background_image = Gosu::Image.new(self, "surf_background.png", true)
		@images = []
		4.times do
			img = MoveableImage.new(self, "surf4.png", rand(640), rand(480))
			@images.push img
		end
		puts @images
	end
	
	def update
		@images.each {|img|
			img.move
		}
	end
	
	def draw
		@background_image.draw(0, 0, 0)
		@images.each {|img|
			img.draw
		}
	end
end

window = GameWindow.new
window.y = 20
window.show
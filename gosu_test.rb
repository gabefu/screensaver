require 'gosu'

def unique obj
	obj.methods - Object.new.methods
end

class GameWindow < Gosu::Window
	def initialize
		super 640, 480, false
		self.caption = "Gosu Tutorial Game"
		
		@bg = Gosu::Image.new(self, "pic2.gif", true)
		@x,@y=0,0
	end
	
	def update
		@x = @x+1
		@y = 1
		if @x==640
			@x = 0
		end
		# if x==640 then x = 0 end
		# should we draw twice? if so, set it
	end
	
	def draw
		
		@bg.draw(@x,@y,0) #draw at correct location
		@bg.draw(@x-640,@y,0)# draw 5640 pix behind
		# if we draw_twice, draw the second time
		
		# testing @bg.width
		#puts unique(bg)
		#puts Object.new.methods
	end
end

window = GameWindow.new
window.show


module Helpers
	def unique obj
		m = (obj.methods - Object.new.methods)
	end
	
	def get_width(filename)
		f = File.open(filename)
		f.each_line do |s|
			return s.to_i
		end
	end
end

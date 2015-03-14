class Friend

	def greeting(to = nil)
		if to.nil?
			"Hello!"
		else
			"Hello, #{to}!"
		end
	end

end
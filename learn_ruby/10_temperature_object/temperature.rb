class Temperature

	#attr_accessor :f, :c

	def initialize(args = {})
		args.each do |k, v|
			instance_variable_set("@#{k}", v)
		end
		
		if @f.nil?
			@f = ctof(@c)
		end

		if @c.nil?
			@c = ftoc(@f)
		end
	end

	def in_fahrenheit
		@f
	end

	def in_celsius
		@c
	end

	def ftoc(fahrenheit)
		(fahrenheit.to_f - 32) * 5 / 9
	end

	def ctof(celcius)
		celcius.to_f * 9 / 5 + 32
	end

	def self.from_celsius(celsius)
		
	end

end
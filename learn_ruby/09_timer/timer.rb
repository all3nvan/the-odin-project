class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		sec = seconds % 60
		min = (seconds / 60) % 60
		hr = (seconds / (60 * 60)) % 60

		"#{padded(hr)}:#{padded(min)}:#{padded(sec)}"
	end

	def padded(number)
		number.to_s.rjust(2, '0')
	end

end
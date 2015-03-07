def reverser
	yield.split.map{ |word| word.reverse}.join(" ")
end

def adder(increment = 1)
	yield + increment
end

def repeater(num_of_times = 1)
	num_of_times.times do
		yield
	end
end
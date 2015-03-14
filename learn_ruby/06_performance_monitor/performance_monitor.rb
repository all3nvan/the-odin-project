def measure(num_of_times = 1)
	start = Time.now
	num_of_times.times do
		yield	
	end

	if num_of_times > 1
		(Time.now - start) / num_of_times.to_f
	else
		Time.now - start
	end
end
def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	return 0 if array.empty?
	array.reduce(:+)
end
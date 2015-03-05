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

def multiply(*numbers)
	numbers.reduce(:*)
end

def power(base, exponent)
	product = 1
	exponent.times do
		product = product * base
	end
	product
end

def factorial(num)
	return 1 if num == 0
	num * factorial(num - 1)
end
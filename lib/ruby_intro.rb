# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
	sum = arr.inject(0){|sum,x| sum + x }
    return sum
end

def max_2_sum arr
	arr1 = arr.max(2)
	sum = arr1.inject(0){|sum,x| sum + x }
	return sum
  # YOUR CODE HERE
end

def sum_to_n? arr, n

	(arr.nil?) || arr.combination(2).any? { |a, b| a + b == n }
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
	str = ""
    str = "Hello, " + name
    return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
	/^[bcdfghjklmnprstvwxyzBCDFGHGKLMNPQRSTVWXYZ]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	return true if s == "0"
	s =~ /^[01]*00$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty? || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		"$%2.2f" % @price
	end
end

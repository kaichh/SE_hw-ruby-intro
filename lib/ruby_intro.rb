# frozen_string_literal: true




# Part 1

def sum(arr)
  # YOUR CODE HERE
  s = 0
  for i in arr
    s += i
  end
  return s
end


def max_2_sum(arr)
  # YOUR CODE HERE
  sum(arr.max(2)) 
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.empty? && number.zero?
    return false
  end
  arr.permutation(2).any? { |a, b| a + b == number }
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  string.start_with?(/[b-df-hj-np-tv-z]/i)     
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string == ''
    return false
  end
  string.match(/^(0|(10|111*0)(10|111*0)*0)*$/)
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn != '' && price > 0
      @isbn = isbn
      @price = price
    else
      raise ArgumentError
    end
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(new_isbn)
    if isbn != ''
      @isbn = new_isbn
    else
      raise ArgumentError
    end
  end

  def price=(new_price)
    if price > 0
      @price = new_price
    else
      raise ArgumentError
    end
  end

  def price_as_string
    "$%0.2f" % [@price]
  end
end
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  ans = 0
  arr.each { |n| ans += n }
  ans
end

def max_2_sum arr
  # YOUR CODE HERE
  len = arr.length
  return 0 if len == 0
  return arr[0] if len == 1
  max_val = arr[0]
  max_index = 0
  second = arr[0]
  ans = 0
  for i in 1...len do
    if arr[i] > max_val
      max_val = arr[i]
      max_index = i
    end
  end
  second = arr[1] if max_index == 0
  ans += max_val
  for i in 0...len do
    next if i == max_index
    if arr[i] > second
      second = arr[i]
    end
  end
  ans += second
  ans
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  len = arr.length
  return false if len < 2
  h = {}
  for i in 0...len do
    partner = n - arr[i]
    if h.has_key?(partner) then
      return true
    end
    h[arr[i]] = i
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty?
  consonants = %w(a e i o u A E I O U)
  consonants.each { |c| return false if c == s[0] }
  return false unless (s[0] >= "a" && s[0] <= "z")||(s[0] >= "A" && s[0] <= "Z")
  true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty?
  for i in 0...s.length do
    return false unless s[i] == "0" || s[i] == "1"
  end
  num = s.to_i
  return true if num%4 == 0
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if isbn.empty? || price <=0
  end

  def price_as_string
    sprintf('$%.2f', @price)
  end
end

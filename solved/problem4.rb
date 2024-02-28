# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 \times 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

#### My Thinking
# Largest product of two three digit numbers is 999 X 999
# So start search backwards from there

def is_palindrome?(n)
  n.to_s.reverse.to_i == n
end

j = 0

palindromes = Array.new
(100..999).reverse_each do |i|
  loop do
    temp = i * (i - j)
    if is_palindrome?(temp) 
      palindromes.push(temp)
    end
    j += 1
    if j == i
      j = 0
      break
    end
  end
end

puts palindromes.max



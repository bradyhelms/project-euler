# Multiples of 3 or 5
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

sum = 0

(1...1000).each do |x|
  if x % 3 == 0
    sum += x
    next
  elsif x % 5 == 0
    sum += x
  end
end

puts sum


# Output: 233168
# 
# time ruby problem1.rb
# ruby problem1.rb  0.04s user 0.01s system 99% cpu 0.052 total

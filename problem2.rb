# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
#
#             1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ... 
# 
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.
 

seed = [1, 2]
until seed[-1] >= 4e6 
  seed.push(seed[-2] + seed[-1])
end
puts seed.reject { |x| x % 2 != 0 }.reduce(:+)

# Output: 4613732
# ruby problem2.rb  0.05s user 0.00s system 99% cpu 0.055 total
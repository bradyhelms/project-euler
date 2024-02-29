=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
=end

require "prime"

sum = 0
(1...2e6).each do |x|
  next if x % 2 == 0 
  sum += x if Prime.prime?(x)
end


puts sum

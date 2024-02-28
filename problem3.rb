# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

require "prime"

n = 600851475143

factors = Prime.prime_division(n)
factors.flatten!.sort!.delete(1)

puts factors.max

# Output: 6857
# ruby problem3.rb  0.05s user 0.00s system 99% cpu 0.054 total

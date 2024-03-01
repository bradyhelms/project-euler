=begin
2^{15} = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^{1000}?
=end

# Can ruby handle 2^1000? 
# p 2**1000 
# Yes!!

num = (2**1000).to_s.split('')
num = num.map {|x| x = x.to_i}
p num.sum

# Easy :)

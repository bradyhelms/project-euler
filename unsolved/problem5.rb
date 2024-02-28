# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 wihout any remainder.
#
# What is the smallest positive number that is evenly divisible by all
# of the numbers from 1 to 20? 


# Going backwards, if the num is divisible by 20, it's also divisible by
# 2, 4, 5, and 10, so we don't need to check those
#
# If we apply similar thinking to the rest of the values, we're left 
# with the following array:
#
#       [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

divisors = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

i = 2520 # starting with the number from the prob statement

loop do
  divisors.each do |x|
    if i % x == 0
      if x == divisors[-1]
        puts i
        exit
      end
    else 
      break 
    end
  end
  i += 1
end

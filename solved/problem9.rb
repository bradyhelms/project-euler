=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, 
for which,a^2 + b^2 = c^2.

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.

Find the product abc.
=end

# I don't like this solution, it is very slow and ugly
# I will come back to this one

(1..999).each do |a|
  (1..999).each do |b|
    if a < b
      (1..999).each do |c|
        if b < c
          if (a + b + c) == 1000
            if (a**2 + b**2) == c**2
              puts "#{a} + #{b} + #{c} = #{a + b + c}"
              puts "abc = #{a*b*c}"
              exit
            end
          end
        end
      end
    end
  end
end

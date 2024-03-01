=begin
The following iterative sequence is defined for the set of positive integers:

n --> n/2     (n is even)
n --> 3n + 1  (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 --> 40 --> 20 --> 10 --> 5 --> 16 --> 8 --> 4 --> 2 --> 1.

It can be seen that this sequence (starting at 13 and finishing at 1) 
contains 10 terms. 

Although it has not been proved yet (Collatz Problem), 
it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

max_length_sequence = 0
starting_num = 0
13.upto(1e6) do |x|
  sequence = [x]
  until sequence[-1] == 1 do
    if sequence[-1].even?
      sequence.push(sequence[-1] / 2)
    else
      sequence.push(sequence[-1]*3 + 1)
    end
  end
  if sequence.length > max_length_sequence
    max_length_sequence = sequence.length
    starting_num = sequence[0]
  end
end

puts "Starting number: #{starting_num}"
puts "Length of sequence: #{max_length_sequence}"

=begin
Starting in the top left corner of a 2 X 2 grid, 
and only being able to move to the right and down, 
there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20 X 20 grid?
=end

### Thoughts
# All paths on the 2 by 2 grid consist of 4 moves 
#   - are all paths the same distance regardless of grid size?
#   
#
# for an n x n grid, it will always take n moves down and n moves right
#   to reach the bottom corner. 2n total moves
#
# Therefore, generating all possible permutations of right and down moves
#   in an array of size 2n, will generate all possible move sequences 

# Brute force method. Takes a really, really long time.
# But it works for the base case!
def brute_force(n) # n x n grid
  total_moves = 2*n
  moves = ['right', 'down']
  perms = moves.repeated_permutation(total_moves).to_a
  # Reject any permutation that does not have an equal number of rights and downs
  perms.reject { |perm| perm.count('right') != n}
end

def direct(n)
  (1..(2*n)).inject(:*) / ((1..n).inject(:*)*(1..n).inject(:*))
end

p direct(20)


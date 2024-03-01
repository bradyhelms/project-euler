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
# Testing with the 2x2 case
# Starting with a grid of all possible vertices
two_by_two = [[1, 1, 1],
              [1, 1, 1],
              [1, 1, 1]]

def move_right(current_pos)
  # current_pos = [i, j]  = arr[i][j]
  
  current_pos[1] += 1
end

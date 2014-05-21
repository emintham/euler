f = File.new('11.in')
grid = []

# get grid
f.each do |line|
  # split up according to spaces and remove leading zeros
  line = line.split(' ').map do |x|
    Integer(x.sub(/^0/,''))
  end
  grid.push(line)
end

num_rows = grid.size
num_cols = grid[0].size

# consider only
# oxxx
#
#
# o
#  x
#   x
#    x
#
#
# o
# x
# x
# x
#
#
#    o
#   x
#  x
# x
#
# for each cell
max_prod = 1
for row in (0..num_rows-1)
  for col in (0..num_cols-1)
    # horizontal
    if col + 3 <= num_cols - 1
      prod = grid[row][col] * grid[row][col+1] * grid[row][col+2] * grid[row][col+3]
      max_prod = prod if prod > max_prod
    end

    # vertical
    if row + 3 <= num_rows - 1
      prod = grid[row][col] * grid[row+1][col] * grid[row+2][col] * grid[row+3][col]
      max_prod = prod if prod > max_prod
    end

    # right diagonal
    if row + 3 <= num_rows - 1 && col + 3 <= num_cols - 1
      prod = grid[row][col] * grid[row+1][col+1] * grid[row+2][col+2] * grid[row+3][col+3]
      max_prod = prod if prod > max_prod
    end

    # left diagonal
    if row + 3 <= num_rows - 1 && col - 3 >= 0
      prod = grid[row][col] * grid[row+1][col-1] * grid[row+2][col-2] * grid[row+3][col-3]
      max_prod = prod if prod > max_prod
    end
  end
end

puts max_prod


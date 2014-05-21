f = File.new('67.in')
triangle = []

f.each do |line|
  triangle.push(line.strip.split(' ').map {|x| x.gsub(/^0/,'').to_i})
end

num_rows = triangle.size

for row in (0..num_rows-1)
  for col in (0..triangle[row].size-1)
    a = (row - 1 >= 0) ? triangle[row-1][col-1] : 0
    b = (row - 1 >= 0 && col < triangle[row-1].size) ? triangle[row-1][col] : 0
    if row == 0 && col == 0
      next
    elsif a > b
      triangle[row][col] = a + triangle[row][col]
    else
      triangle[row][col] = b + triangle[row][col]
    end
  end
end

puts triangle[num_rows-1].max

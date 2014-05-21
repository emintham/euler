f = File.new('13.in')
grid = []

f.each do |line|
  grid.push(Integer(line.strip))
end
print grid.inject(0) { |r,e| r + e }

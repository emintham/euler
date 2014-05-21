f = File.new('22.in')

names = f.gets.split(',').map {|x| x.gsub(/\"/,'') }
names = names.sort
names_with_index = names.each_with_index.map {|x,i| [x,i+1]}

def name_score(n)
	s = n.split('').map { |x| x.to_i(36) - 9 }
	return s.inject(0) {|r,e| r + e}
end

scores = names_with_index.map! { |x| name_score(x[0]) * x[1]}
puts scores.inject(0) { |r,e| r + e }
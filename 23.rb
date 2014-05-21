require 'set'

ubound = 28123

def sum_of_proper_divisors(n)
	divs = Set.new()
	for div in (2..Math.sqrt(n))
		rem = n % div
		if rem == 0
			quotient = n / div
			divs.add(div)
			divs.add(quotient)
		end
	end

	return divs.to_a.inject(1) {|r,e| r + e}
end

def abundant?(n)
	sum_of_proper_divisors(n) > n
end

abundants = (1..ubound).find_all { |x| abundant?(x) }

abundants_sum = Set.new()
abundants.each do |i|
	abundants.each do |j|
		abundants_sum.add(i+j)
	end
end

nums = (1..ubound).to_set
sum = nums.difference(abundants_sum).inject(0) { |r,e| r+e}

print sum
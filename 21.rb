require 'set'

ubound = 10000
amicable = Set.new()

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

for i in (1..ubound)
	pair = sum_of_proper_divisors(i)
	if i == sum_of_proper_divisors(pair) && i != pair
		amicable.add(i)
		amicable.add(pair)
	end
end

puts amicable.to_a.inject(0) { |r,e| r + e}
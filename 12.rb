require 'prime'

n = 5000
triangle_n = n*(n+1)/2
ubound = 500

while true
  factors = Prime.prime_division(triangle_n)
  num_divisors = factors.inject(1) { |result, element| result * (element[1] + 1) }

  if num_divisors > ubound
    puts triangle_n
    break
  end

  n += 1
  triangle_n += n
end

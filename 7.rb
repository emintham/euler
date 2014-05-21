require 'set'

primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71]
num = 73
index = 10001

while primes.size < index
  is_prime = true
  
  # Trial division
  primes.each do |i|
    if i > Math.sqrt(num)
      break
    # divisible by p
    elsif num % i == 0
      is_prime = false
      break
    end
  end

  primes.push(num) if is_prime
  num += 1
end

print primes[index-1]

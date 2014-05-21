require 'prime'

sum = Prime.inject(0) { |sum, n|
  break sum unless n < 2_000_000
  sum + n
}
puts sum

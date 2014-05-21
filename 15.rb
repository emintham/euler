# central binomial number
n = 20

class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

puts (2*n).fact / (n.fact ** 2)

class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

arr = 100.fact.to_s.split('')
print arr.inject(0) { |r,e| r + e.to_i }


ubound = 1000000
lookup = {1=>1, 2=>2, 4=>3, 8=>4, 16=>5, 5=>6, 10=>7, 20=>8, 40=>9, 13=>10}
max_i = 13
max_length = 10

for i in (26..ubound-1)
  steps = 0
  # if not seen before
  if !lookup[i]
    j = i
    # calculate its collatz length and add it to lookup table
    while !lookup[j]
      steps += 1
      if j % 2 == 0
        tmp = j / 2
      else
        tmp = 3 * j + 1
      end

      l = lookup[tmp]
      if l
        new_length = l + steps
        lookup[j] = new_length
        if new_length > max_length
          max_length = new_length
          max_i = i
        end
        break
      end
      j = tmp
    end
  end
end

puts lookup.to_s
puts "max_i = #{max_i}, max_length = #{max_length}"

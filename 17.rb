dictionary = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
  6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',
  11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
  15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
  19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty',
  50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty',
  90 => 'ninety'}
sum = 0
ubound = 1000

for i in (1..ubound)
  j = i
  while true
    if j == 0
      break
    elsif j == 1000
      sum += 'one thousand'.gsub!(/ /, "").length
      j %= 1000
    elsif j / 100 != 0
      quotient = j / 100
      sum += dictionary[quotient].length + 'hundred'.length if quotient != 0
      sum += 'and'.length if j % 100 != 0
      j %= 100
    elsif dictionary[j] != nil
      sum += dictionary[j].length
      break
    else
      quotient = j / 10
      remainder = j % 10
      sum += dictionary[quotient*10].length if quotient != 0
      j %= 10
    end
  end
end

puts sum


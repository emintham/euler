for a in (3..1000)
  for b in (4..1000)
    for c in (5..1000)
      if a + b + c != 1000
        next
      end

      lhs = a ** 2 + b ** 2
      rhs = c ** 2

      if lhs == rhs && a+b+c == 1000
        print a * b * c
        early = true
        break
      end
    end
    break if early
  end
  break if early
end

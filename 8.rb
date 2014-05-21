f = File.new('8.in')
window = []
max_prod = 0

f.each_char do |c|
  # get new char and maintain window of size 5
  window.push(c) unless c == "\n"
  if window.size > 5
    window = window.drop(1)

    # calculate product
    window_int = window.map {|x| Integer(x) }
    result = window_int.inject(1) { |result, element| result * element }
    max_prod = (result > max_prod) ? result : max_prod
  end
end

print max_prod

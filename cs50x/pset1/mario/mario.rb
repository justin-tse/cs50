while true
  print("Height: ")
  n = gets.chomp().to_i

  if !(n <= 0 || n > 8)
    break
  end
end

(1..n).each do |i|
  puts(" " * (n - i) + "#" * i + "  " + "#" * i)
end
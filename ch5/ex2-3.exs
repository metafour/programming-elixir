IO.puts "testing fizzbuzz function"
IO.puts "-------------------------"
IO.puts " "
fb = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c = _ -> c
end

IO.inspect fb.(0, 0, 0)
IO.inspect fb.(0, 1, 1)
IO.inspect fb.(1, 0, 1)
IO.inspect fb.(1, 1, 1)

IO.puts " "
IO.puts "FizzBuzz 10..16"
IO.puts "---------------"
IO.puts " "

fizzbuzz = fn n -> fb.(rem(n, 3), rem(n, 5), n) end

IO.inspect fizzbuzz.(10)
IO.inspect fizzbuzz.(11)
IO.inspect fizzbuzz.(12)
IO.inspect fizzbuzz.(13)
IO.inspect fizzbuzz.(14)
IO.inspect fizzbuzz.(15)
IO.inspect fizzbuzz.(16)

IO.puts " "

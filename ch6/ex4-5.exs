# Exercise: ModulesAndFunctions-4
defmodule Sum do
  def of(1), do: 1
  def of(n), do: n + of(n - 1)
end 

IO.inspect Sum.of(1)
IO.inspect Sum.of(5)
IO.inspect Sum.of(100)

# Exercise: ModulesAndFunctions-5
# gcd(x,y) is x if y is zero, else gcd(y, rem(x,y))

defmodule Gcd do
  def of(x,0), do: x
  def of(x,y), do: of(y, rem(x,y))
end

IO.inspect Gcd.of(1,0)
IO.inspect Gcd.of(10, 15)
IO.inspect Gcd.of(15, 10)
IO.inspect Gcd.of(101,303)

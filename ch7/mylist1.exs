defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [ head*head | square(tail) ]

  def add_1([]), do: []
  def add_1([ head | tail ]), do: [ head+1 | add_1(tail) ]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]
end

IO.puts MyList.len([11,12,13,14,15])

IO.inspect MyList.square([4,5,6])

IO.inspect MyList.add_1([1000])
IO.inspect MyList.add_1([4,6,8])

IO.inspect MyList.map([1,2,3], fn (n) -> n*n end)
IO.inspect MyList.map [2,4,6], &(&1*&1)

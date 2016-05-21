# Exercise: ListsAndRecursion-5

defmodule MyList do

  # all?
  def all?([], fun) do
    fun.([])
  end

  def all?([ head | tail ], fun) when tail == [] do
    fun.(head)
  end

  def all?([ head | tail ], fun) do
    _all?(fun.(head), tail, fun)
  end

  def _all?(value, tail, fun) when value == true do
    all?(tail, fun)
  end

  def _all?(value, _tail, _fun) when value == false do
    false
  end

  # each
  def each([], _fun), do: :ok

  def each([ head | tail ], fun) do
    fun.(head)
    each(tail, fun)
  end

  #filter
  def filter([], _fun), do: []

  def filter([ head | tail ], fun) do
    if fun.(head) do
      [ head | filter(tail, fun) ]
    else
      filter(tail, fun)
    end
  end

  # split
  #def split([], _int), do: {[], []}

  #def split(list, 0), do: {[], list}

  #def split([ head | tail ], int) when int > 0 do
  #  [ head ] ++ split(tail, int)
  #end

  # split HINT
  def split(list, count), do: _split(list, [], count)

  def _split([], acc, _count) do
    { acc, [] }
  end

  def _split([ head | tail ], acc, count) when count == 1 do
    { acc ++ [ head ], tail }
  end

  def _split([ head | tail ], acc, count) do
    _split(tail, acc ++ [ head ], count-1)
  end

  # take
  def take(list, int), do: _take(list, [], int)
  
  defp _take([], acc, _int), do: acc

  defp _take([ _head | _tail ], _acc, int) when int == 0 do
    [ ]
  end

  defp _take([ head | _tail ], acc, int) when int == 1 do
    acc ++ [ head ]
  end

  defp _take([ head | tail ], acc, int) do
    _take(tail, acc ++ [ head ], int-1)
  end

  # Exercise: ListsAndRecursion-6
  def flatten(list), do: _flatten(list, [])

  def _flatten([], acc) do
    acc
  end

  def _flatten([ head | tail ], acc) when is_list(head) do
    _flatten(tail, acc ++ _flatten(head, []))
  end

  def _flatten([ head | tail ], acc) do
    _flatten(tail, acc ++ [head])
  end

end

# all?
IO.puts "all? tests"
IO.puts "----------"
IO.inspect MyList.all?([], &(&1 == 1))
IO.inspect MyList.all?([nil], &(&1 == 1))
IO.inspect MyList.all?([1,2,3], &(&1 == 1))
IO.inspect MyList.all?([1,1,1], &(&1 == 2))
IO.inspect MyList.all?([1,1,1, "one", '1', ], &(&1 == 1))
IO.inspect MyList.all?(Enum.to_list(1..100), &(&1 == 2))
IO.inspect MyList.all?([1,1,1], &(&1 == 1))
IO.puts ""

# each
IO.puts "each test"
IO.puts "---------"
IO.inspect MyList.each(["some", "example"], &(IO.puts &1))
IO.puts ""

# filter
IO.puts "filter tests"
IO.puts "------------"
IO.inspect MyList.filter([], &(&1))
IO.inspect MyList.filter([1,2,3], &(&1 == 2))
IO.inspect MyList.filter([1, 2, 3], fn(x) -> rem(x, 2) == 0 end)
IO.puts ""

# split
IO.puts "split tests"
IO.puts "-----------"
IO.inspect MyList.split([], 2)
IO.inspect MyList.split([], 1)
IO.inspect MyList.split([1,2,3], 0)
IO.inspect MyList.split([1,2,3], 1)
IO.inspect MyList.split([1,2,3], 2)
IO.inspect MyList.split([1,2,3], 3)
IO.inspect MyList.split([1,2,3], -2)
IO.inspect MyList.split(Enum.to_list(1..10), 7)
IO.puts ""

# take
IO.puts "take tests"
IO.puts "----------"
IO.inspect MyList.take([1,2,3], 2)
IO.inspect MyList.take([1,2,3], 10)
IO.inspect MyList.take([1,2,3], 0)
IO.inspect MyList.take([1,2,3], 3)
IO.inspect MyList.take(Enum.to_list(1..10), 7)
IO.inspect MyList.take('pragmatic', 6)
IO.puts ""

# flatten
IO.puts "flatten tests"
IO.puts "-------------"
IO.inspect MyList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
IO.inspect MyList.flatten([1, [[2], 3]])

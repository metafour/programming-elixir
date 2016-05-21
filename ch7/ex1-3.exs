defmodule MyList do

  # Exercise: ListsAndRecursion-1
  def mapsum(list, func), do: _mapsum(list, 0, func)

  defp _mapsum([], value, _func), do: value
  defp _mapsum([ head | tail ], value, func), do: _mapsum(tail, value+func.(head), func)


  # Exercise: ListsAndRecursion-2
  def max([head | tail]) do
    _max(tail, head)
  end

  defp _max([], max), do: max
  defp _max([ head | tail ], max) when max > head, do: _max(tail, max)
  defp _max([ head | tail ], max) when max < head, do: _max(tail, head)

  # Exercise: ListsAndRecursion-2
  #def caesar(list, n) do
  #
  #end
  def caesar([], n), do: []
  def caesar([ head | tail ], n) when (head + n > 122) do
    [ ((head + n) - 122) + 96 | caesar(tail, n) ]
  end

  def caesar([ head | tail ], n) when (head + n < 122) do
    [ head + n | caesar(tail, n) ]
  end
end

IO.inspect MyList.mapsum([1,2,3], &(&1 * &1))

IO.inspect MyList.max([1,7,3,4,8,5,100])

IO.inspect MyList.caesar('ryvkve', 13)

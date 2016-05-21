defmodule MyList do
  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head+total)
end

IO.inspect MyList.sum([1,2,3,4,5])
IO.inspect MyList.sum(Enum.to_list 1..100)

defmodule MyList do
  def list_item([ head | tail ]) when is_list(head), do: list_item(head)

  def list_item([ head | tail ]), do: head
end

IO.inspect MyList.list_item([4])
IO.inspect MyList.list_item([[4]])
IO.inspect MyList.list_item([[[4]]])

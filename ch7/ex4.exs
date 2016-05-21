defmodule MyList do
  def span(from, to) when from > to, do: raise "From can't be greater than to"
  def span(from, to) when from < to, do: [ from | span(from + 1, to) ]
  def span(from, to) when from == to, do: [ to ]
end

IO.inspect MyList.span(1,10)
IO.inspect MyList.span(1,50)

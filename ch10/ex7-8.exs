defmodule MyList do
  def span(from, to) when from > to, do: raise "From can't be greater than to"
  def span(from, to) when from < to, do: [ from | span(from + 1, to) ]
  def span(from, to) when from == to, do: [ to ]
end


#for x <- MyList.span(2,10), square <- :math.sqrt(x), n <- x..square, do: IO.puts n

#IO.inspect for x <- MyList.span(2,10), n <- x..round(Float.floor(:math.sqrt(x))), rem(x,n) != 0, do: x

#defmodule MyMath do
#  def is_prime(x) do
#
#  end
#end

#IO.inspect for x <- MyList.span(2,10), is_prime(x), do: x

IO.inspect for x <- MyList.span(2,10), do: Enum.filter(x..round(Float.floor(:math.sqrt(x))), &(rem(x,&1)==0))

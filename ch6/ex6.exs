defmodule Chop do

  def guess(number, range) do
    (lower..upper) = range
    middle = div(upper+lower, 2) # divide range in half
    IO.puts "Is it #{middle}"
    #IO.puts "guess Range: #{inspect(range)}"
    guess_number(number, range, middle)
    #guess(number, lower..middle-1) when number < middle
    #guess(number, middle+1..upper) when number > middle
    #number when number == middle
  end

  #def guess_number(number, range, guess) when number > div(range, 2) do
  #  
  #end

  #def guess_number(number, range, guess) when number < div(range, 2) do
  #  
  #end

  def guess_number(number, range, guess) when number > guess do
    #IO.puts "guess number too low"
    #IO.puts "guess_number Range: #{inspect range}"
    (_..upper) = range
    guess(number, guess+1..upper)
  end

  def guess_number(number, range, guess) when number < guess do
    #IO.puts "guess number too high"
    #IO.puts "guess_number Range: #{inspect range}"
    (lower.._) = range
    guess(number, lower..guess-1)
  end

  def guess_number(number, _, guess) when number == guess do
    IO.puts guess
  end

end

Chop.guess(273, 1..1000)

#Is it 500
#guess Range: 1..1000
#guess number too high
#guess_number Range: 1..1000
#Is it 249
#guess Range: 1..499
#guess number too low
#guess_number Range: 1..499
#Is it 249
#guess Range: 250..499
#guess number too low
#guess_number Range: 250..499
#Is it 249
#guess Range: 250..499
#guess number too low
#guess_number Range: 250..499

#ex6.exs:25: warning: variable lower is unused
#ex6.exs:32: warning: variable upper is unused
#ex6.exs:36: warning: variable range is unused

defmodule ListInteraction do
  def multiply([], []), do: :ok
     
  def multiply([head | tail], [x | y]) do
    IO.puts(head * x)
    multiply(tail, y)
  end
end

ListInteraction.multiply([1, 2, 3, 4, 5, 6, 7], [10,13,18,19,25, 30,35])

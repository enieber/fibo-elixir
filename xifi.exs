defmodule MyList do
  def read([], []), do: IO.puts("End of list")
     
  def read([head | tail], [x | y]) do
    IO.puts(head * x)
    read(tail, y)
  end
end

MyList.read([1, 2, 3, 4, 5, 6, 7], [10,13,18,19,25, 30,35])

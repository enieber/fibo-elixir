defmodule Fibonacci do

  def fib(1), do: 1
  def fib(2), do: 1
  def fib(n) when is_integer(n) and n > 2 do
    fib(n - 1) + fib(n - 2)  
  end
end
   

IO.puts Fibonacci.fib(5)
IO.puts Fibonacci.fib(2)
IO.puts Fibonacci.fib(15)


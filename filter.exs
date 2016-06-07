defmodule Functional do
  
  def filter(list, function) when is_function(function) do 
    filter(list, function, [])
  end

  defp filter([], _function, acumulator), do: acumulator
  defp filter([ head | tail ], function, acumulator) do 

    case function.(head) do
      0 -> filter(tail, function, [ head | acumulator ])
      1 -> filter(tail, function, acumulator)
    end
  end
end


a = Functional.filter [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], fn num -> rem(num, 2) end

IO.puts "#{inspect a}"

defmodule MathDemo do

  def absolute_value(number) when number < 0 do
    IO.puts(1)
    -number
  end

  def absolute_value(number) when number == 0 do
    IO.puts(2)
    0
  end

  def absolute_value(number) when number > 0 do
    IO.puts(3)
   number
  end

end

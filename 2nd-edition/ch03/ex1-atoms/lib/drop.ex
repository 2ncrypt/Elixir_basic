defmodule Drop do

  def fall_velocity(:earth, distance) do
    IO.puts "I'am earth"
   :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) do
    IO.puts "I'am Moon"
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) do
   :math.sqrt(2 * 3.71 * distance)
  end

  def fall_velocity(:jupiter, distance) do
   :math.sqrt(2 * 25.3 * distance)
  end

end

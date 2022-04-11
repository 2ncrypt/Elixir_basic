defmodule Drop do

  def fall_velocity(planemo, distance) when distance >= 0 do
    gravity = case planemo do
     :earth -> 9.8
     :moon  -> 1.6
     :mars  -> 3.71
    end
    #여기서는 이부분에서 return값을 결정
    :math.sqrt(2 * gravity * distance)
  end

end

defmodule Drop do

  def fall_velocity(planemo, distance) when distance >= 0 do
    gravity = case planemo do
     :earth -> 9.8
     :moon  -> 1.6
     :mars  -> 3.71
    #  뭔가라도 걸리게 하고싶으면 underScore
     _ -> 10
    end

    velocity = :math.sqrt(2 * gravity * distance)
    IO.puts(velocity)
    #condition 3개 이상의 경우에만 사용
    cond do
      velocity == 0 -> :stable
      velocity < 5 -> :slow
      velocity >= 5 and velocity < 10 -> :moving
      velocity >= 10 and velocity < 20 -> :fast
      velocity >= 20 -> :speedy
    end
  end

end

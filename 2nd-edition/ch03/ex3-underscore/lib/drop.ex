defmodule Drop do

  def fall_velocity(planemo, distance) when distance >= 0 do
   :math.sqrt(2 * 9.8 * distance)
  end

  def underscore_fall_velocity(_planemo, distance) when distance >= 0 do
    :math.sqrt(2 * 9.8 * distance)
   end

end

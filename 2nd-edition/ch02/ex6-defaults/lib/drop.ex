defmodule Drop do
  def fall_velocity(distance, gravity \\ 9.8) do
    #만약 한개의 args만 전달 받았을시  gravity는 9.8로 디플트하라는 뜻
    :math.sqrt(2 * gravity * distance)
  end
end

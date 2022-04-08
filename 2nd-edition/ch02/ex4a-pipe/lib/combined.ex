defmodule Combined do
  def height_to_mph(meters) do
    # 위와 아래의 코드가 같음 Pipe operator
    Convert.mps_to_mph(Drop.fall_velocity(meters))
    Drop.fall_velocity(meters) |> Convert.mps_to_mph()
  end
end

defmodule Drop do

  def fall_velocity({planemo, distance}) when distance >= 0 do
   #Gaurd는 하나만 쓰고 이런식으로 전개 해도 가능함
    fall_velocity(planemo, distance)
  end


  defp fall_velocity(:earth, distance) do
    '''
    실행하게되면 이렇게 에러가 뜸
    ** (UndefinedFunctionError) function Drop.fall_velocity/2 is undefined or private. Did you mean:

      * fall_velocity/1

    (drop 0.1.0) Drop.fall_velocity(:moon, 30)
    '''
   :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) do
   :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) do
   :math.sqrt(2 * 3.71 * distance)
  end

end

defmodule Ask do

  def line() do
    planemo=get_planemo()
    distance=get_distance()
    Drop.fall_velocity({planemo, distance})
  end

  defp get_planemo() do
    IO.puts("""
    Which planemo are you on?
     1. Earth
     2. Earth's Moon
     3. Mars
     """)

    # version1
    answer = IO.gets("Which? > ")
    value=String.first(answer) #여러개 입력받아도 첫번째것만 입력받게 하는것
    char_to_planemo(value)
    # version pipeline
    IO.gets("Which > ")
      |> String.first()
      |> char_to_planemo()
  end

defp get_distance() do
   input = IO.gets("How far? (meters) > ")
   value = String.strip(input) #눈에 보이지 않는 여러가지 특수문자 제거
   String.to_integer(value) #String을 integer형식으로 바꿔주는것
end

defp char_to_planemo(char) do
   case char do
       "1" -> :earth
       "2" -> :moon
       "3" -> :mars
   end
  end

end

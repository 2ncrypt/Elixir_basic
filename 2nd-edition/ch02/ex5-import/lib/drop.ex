defmodule Drop do
  import :math #? erlang module
  #? improt :math, only: [sqrt:1]
                        #[args가 1개인 sqrt를 부름 , 2일땐 2개]
  #? improt :math, except: [sin:1, cos:1]
                   # sin과 cos를 빼고 다 불러올땐 except
  def fall_velocity(distance) do
    #?imprt :math, only:[sqrt:1]
    # function내에서만 쓰고 싶을땐 위처럼 함수 안에다가 임포트 가능
    :math.sqrt(2 * 9.8 * distance)
  end

  #아래는 import를 했기때문에 :math. 안해줘도됨
  def import_fall_velocity(distance) do
    sqrt(2 * 9.8 * distance)
  end
end

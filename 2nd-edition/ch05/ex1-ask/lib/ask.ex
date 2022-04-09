defmodule Ask do

  def data_immutable() do
    a = "this"
    b = "The value of a is #{a}"
    IO.puts(a)
    IO.puts(b)
    a= "that"
    IO.puts(b)
  end

  def chars() do
    IO.puts("""
    Which planemo are you on?
     1. Earth
     2. Moon
     3. Mars
    """)

    # 입력받는값들을 이런식으로도 사용이 가능
    a = IO.getn("Which? > ")
    IO.puts("a #{a}")
    "a = #{a}"
    # IO.getn -> 사용자의 입력을 받는것
  end
end

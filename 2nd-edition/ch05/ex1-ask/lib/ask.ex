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

    IO.getn("Which? > ")

  end
end

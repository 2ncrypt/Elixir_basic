defmodule Fact do
'''
Fact.factorial(5)
result = 5*(result = 4(result = 3*(result=2*factorial(1))))
compilation = factorial(5),factorial(4),factorial(3),factorial(2),factorial(1)
뒷쪽부터 앞으로 처리되는 unwinding 형식
그래서 사용되는게 Tail-recursion
'''
  def factorial(n) when n > 1 do
    IO.puts("Calling from #{n}.")
    result = n * factorial(n - 1)
    IO.puts("#{n} yields #{result}.")
    result
  end

  def factorial(n) when n <= 1 do
    IO.puts("Calling from 1.")
    IO.puts("1 yields 1.")
    1
  end
end

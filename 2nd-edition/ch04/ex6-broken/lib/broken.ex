defmodule Broken do

  def bad_cond(test_val) do

    # cond do
      # 이러한 방식은 안됨
    #   test_val < 0 -> x=1
    #   test_val >= 0 -> y=2
    # end
    # 아래와 같은 방식으로 풀어도 되고 if문으로 풀어써도됌
      x = cond do
        test_val < 0 -> 1
        test_val >= 0 ->2
      end
      y = cond do
        test_val > 0 -> 1
        test_val <= 0 ->2
      end
      IO.puts(x+y)
   x+y

  end
end

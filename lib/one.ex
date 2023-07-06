defmodule ProjectEuler.One do
  def solve(number) do
    multiple_of_three_and_five_sum(number - 1, 0)
  end

  def multiple_of_three_and_five_sum(0, sum) do
    sum
  end

  def multiple_of_three_and_five_sum(number, sum)
      when rem(number, 3) === 0 or rem(number, 5) === 0 do
    multiple_of_three_and_five_sum(number - 1, sum + number)
  end

  def multiple_of_three_and_five_sum(number, sum) do
    multiple_of_three_and_five_sum(number - 1, sum)
  end
end

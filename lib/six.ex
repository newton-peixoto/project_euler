defmodule Six do
  def solve(value) do
    sum_of_nth = sum_of_nth(value)
    sum_of_nth * sum_of_nth - sum_of_square(value)
  end

  def sum_of_square(n), do: sum_of_square(n, 0)

  def sum_of_square(0, sum), do: sum
  def sum_of_square(n, sum), do: sum_of_square(n - 1, n * n + sum)

  def sum_of_nth(n), do: sum_of_nth(n, 0)

  def sum_of_nth(0, sum), do: sum
  def sum_of_nth(n, sum), do: sum_of_nth(n - 1, n + sum)
end

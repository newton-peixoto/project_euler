defmodule Five do
  defp gcd(0, b), do: b
  defp gcd(a, b), do: gcd(rem(b, a), a)

  defp smallestDiv(n) do
    1..n
    |> Enum.reduce(1, fn element, accumulator ->
      divisor = gcd(element, accumulator)
      div(element * accumulator, divisor)
    end)
  end

  def solve do
    smallestDiv(20)
  end
end

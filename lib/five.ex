defmodule Five do
  def solve() do
    [head | _] =
      Stream.unfold(1, &unfold/1)
      |> Enum.reverse()

    head + 1
  end

  def unfold(n) do
    case is_evenly_divided?(n) do
      true -> nil
      _ -> {n, n + 1}
    end
  end

  def is_evenly_divided?(n) do
    1..20 |> Enum.all?(fn number -> rem(n, number) === 0 end)
  end

end

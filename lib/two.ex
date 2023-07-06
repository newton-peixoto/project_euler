defmodule Two do
  def unfold({n, _m}) when n > 4_000_000, do: nil
  def unfold({n, m}), do: {n, {m, n + m}}

  def reducer(element, acc) when rem(element, 2) === 0, do: acc + element
  def reducer(_element, acc), do: acc

  def solve() do
    Stream.unfold({1, 2}, &unfold/1)
    |> Enum.reduce(0, &reducer/2)
  end
end

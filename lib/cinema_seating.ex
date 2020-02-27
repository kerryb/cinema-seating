defmodule CinemaSeating do
  @doc """
  Calculate the number of options for _n_ people to sit together.

  Executable examples/tests:

  ```
  iex> CinemaSeating.options([[1, 0, 0, 0, 1, 1, 1],
  ...>                        [1, 1, 1, 0, 1, 1, 1],
  ...>                        [1, 0, 1, 0, 1, 0, 1],
  ...>                        [1, 1, 0, 1, 1, 0, 1],
  ...>                        [1, 0, 1, 1, 1, 1, 1],
  ...>                        [1, 0, 1, 1, 0, 0, 0]], 3)
  2

  iex> CinemaSeating.options([[1, 0, 1, 0, 1, 0, 1],
  ...>                        [0, 1, 0, 1, 0, 1, 0],
  ...>                        [0, 0, 1, 1, 1, 1, 1],
  ...>                        [1, 0, 1, 1, 0, 0, 1],
  ...>                        [1, 1, 1, 0, 1, 0, 1],
  ...>                        [0, 1, 1, 1, 1, 0, 0]], 2)
  3

  iex> CinemaSeating.options([[1, 0, 1, 0, 1, 0, 1],
  ...>                        [0, 1, 0, 0, 0, 0, 0]], 4)
  2

  iex> CinemaSeating.options([[1, 0, 1, 0, 1, 0, 1],
  ...>                        [0, 1, 0, 0, 1, 0, 0]], 4)
  0

  iex> CinemaSeating.options([[0, 0, 0, 0, 0, 0, 0],
  ...>                        [0, 0, 0, 0, 0, 0, 0]], 10)
  0
  ```
  """
  def options(seats, people) do
    seats
    |> Enum.map(&row_options(&1, people))
    |> Enum.sum()
  end

  defp row_options(seats, people) do
    seats
    |> Enum.chunk_every(people, 1, :discard)
    |> Enum.count(&all_available?/1)
  end

  defp all_available?(seats) do
    seats
    |> Enum.all?(&(&1 == 0))
  end
end

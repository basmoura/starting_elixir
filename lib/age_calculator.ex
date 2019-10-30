defmodule AgeCalculator do
  def calculate do
    birth_date = get_date()
    date_birth = Date.new(compose_age(birth_date, 2),
                          compose_age(birth_date, 1),
                          compose_age(birth_date, 0))

    IO.puts "Você tem #{datediff(date_birth) * -1} anos"
  end

  def get_date do
    IO.gets("Data de nascimento\n")
    |> String.trim_trailing
    |> String.split("/")
  end

  def parse_age(birth_date, pos) do
    birth_date
    |> Enum.at(pos)
    |> Integer.parse
  end

  def compose_age(birth_date, pos) do
    birth_date
    |> parse_age(pos)
    |> elem(0)
  end

  def datediff(date) do
    date
    |> elem(1)
    |> Date.diff(Date.utc_today)
    |> div(365)
  end
end

defmodule AgeCalculator do
  def calculate do
    date_birth_input = IO.gets("Data de nascimento\n")
    date_birth_input = String.trim_trailing(date_birth_input)
    date_birth_input = String.split(date_birth_input, "/")
    year = Integer.parse(Enum.at(date_birth_input, 2))
    month = Integer.parse(Enum.at(date_birth_input, 1))
    day = Integer.parse(Enum.at(date_birth_input, 0))

    date_birth = Date.new(elem(year, 0), elem(month, 0), elem(day, 0))
    datediff = Date.diff(Date.utc_today, elem(date_birth, 1))

    age = trunc(datediff / 365)

    IO.puts "Você tem #{age} anos"
  end
end

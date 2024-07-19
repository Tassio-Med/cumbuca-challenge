defmodule CumbucaChallenge do
  def main(_args) do
    execute()
  end

  def execute do
    IO.puts("Adicione os nomes dos reis e rainhas de Cumbúquia, cada um por linha e um de casa vez. \nApós adicionar o nome pressione Enter. \nQuando quiser finalizar, apenas pressione Enter em uma linha vazia. \nInsira os nomes abaixo:")
    monarchs = collect_monarchs()
    numbered_monarchs = number_monarchs(monarchs)
    Enum.each(numbered_monarchs, &IO.puts/1)
  end

  defp collect_monarchs(acc \\ []) do
    case IO.gets("") do
      "\n" -> Enum.reverse(acc)
      monarch -> collect_monarchs([String.trim(monarch) | acc])
    end
  end

  def number_monarchs(monarchs) do
    {_, numbered_monarchs} =
      Enum.reduce(monarchs, {%{}, []}, fn monarch, {acc, result} ->
        count = Map.get(acc, monarch, 0) + 1
        new_acc = Map.put(acc, monarch, count)
        {new_acc, [format_monarch(monarch, count) | result]}
      end)

    Enum.reverse(numbered_monarchs)
  end

  defp format_monarch(monarch, count) do
    "#{monarch} #{to_roman(count)}"
  end

  def to_roman(number) do
    roman_numerals = [
      {1000, "M"}, {900, "CM"}, {500, "D"},
      {400, "CD"}, {100, "C"}, {90, "XC"},
      {50, "L"}, {40, "XL"}, {10, "X"},
      {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}
    ]

    roman_numerals
    |> Enum.reduce({number, ""}, fn {value, numeral}, {num, acc} ->
      count = div(num, value)
      {rem(num, value), acc <> String.duplicate(numeral, count)}
    end)
    |> elem(1)
  end
end

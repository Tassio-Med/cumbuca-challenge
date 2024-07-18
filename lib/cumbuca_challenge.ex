defmodule CumbucaChallenge do
  def execute do
    IO.puts("Adicione os nomes dos reis e rainhas de Cumbúquia, cada um por linha e um de casa vez. Após adicionar o nome pressione Enter. Quando quiser finalizar, apenas pressione Enter em uma linha vazia.")
    monarchs = collect_monarchs()
  end

  defp collect_monarchs(acc \\ []) do
    case IO.gets("") do
      "\n" -> Enum.reverse(acc)
      monarch -> collect_monarchs([String.trim(monarch) | acc])
    end
  end
end

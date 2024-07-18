defmodule CumbucaChallengeTest do
  use ExUnit.Case

  alias CumbucaChallenge

  test "A função number_monarchs/1 numera os nomes de forma correta" do
    names = ["Filipe", "Francisco", "Filipe", "Francisco", "Filipe"]
    expected = ["Filipe I", "Francisco I", "Filipe II", "Francisco II", "Filipe III"]
    assert CumbucaChallenge.number_monarchs(names) == expected

    names = ["Wallyson", "Célia", "Cecília", "Wallyson"]
    expected = ["Wallyson I", "Célia I", "Cecília I", "Wallyson II"]
    assert CumbucaChallenge.number_monarchs(names) == expected

    names = ["Miguel", "Miguel", "Miguel", "Miguel"]
    expected = ["Miguel I", "Miguel II", "Miguel III", "Miguel IV"]
    assert CumbucaChallenge.number_monarchs(names) == expected

  end
end

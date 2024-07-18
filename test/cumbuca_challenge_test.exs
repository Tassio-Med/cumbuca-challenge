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

  test "A função to_roman/1 converte os números para algarismos romanos corretamente " do
    assert CumbucaChallenge.to_roman(1) == "I"
    assert CumbucaChallenge.to_roman(3) == "III"
    assert CumbucaChallenge.to_roman(4) == "IV"
    assert CumbucaChallenge.to_roman(9) == "IX"
    assert CumbucaChallenge.to_roman(18) == "XVIII"
    assert CumbucaChallenge.to_roman(40) == "XL"
    assert CumbucaChallenge.to_roman(50) == "L"
    assert CumbucaChallenge.to_roman(55) == "LV"
    assert CumbucaChallenge.to_roman(93) == "XCIII"
    assert CumbucaChallenge.to_roman(100) == "C"
    assert CumbucaChallenge.to_roman(500) == "D"
    assert CumbucaChallenge.to_roman(1000) == "M"
  end
end

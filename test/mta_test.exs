defmodule MtaTest do
  use ExUnit.Case
  doctest Mta

  test "greets the world" do
    assert Mta.hello() == :world
  end
end

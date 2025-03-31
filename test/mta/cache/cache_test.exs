import Mta.Cache

defmodule Mta.Cache.Test do
  use ExUnit.Case, async: true

  @table_key :data
  @ets_undefined :undefined

  describe "init" do
    setup do
      on_exit(fn ->
        if :ets.info(@table_key) !== @ets_undefined, do: :ets.delete(@table_key)
      end)
    end

    test "defines and returns table" do
      info = init()

      assert :ets.info(@table_key) == info
    end

    test "defines set" do
      type = init() |> Keyword.get(:type)

      assert type == :set
    end

    test "defines named table" do
      named_table = init() |> Keyword.get(:named_table)

      assert named_table == true
    end
  end
end

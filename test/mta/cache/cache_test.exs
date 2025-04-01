import Mta.Cache

alias Mta.Cache.TimestampValue

defmodule Mta.Cache.Test do
  use ExUnit.Case, async: true

  @ets_undefined :undefined
  @table_type :set
  @is_named_table true

  @table_key :data
  @response_key :response_key

  describe "init tests" do
    setup do
      on_exit(&delete_table_if_exists/0)
    end

    test "defines and returns table" do
      info = init()

      assert :ets.info(@table_key) == info
    end

    test "has correct table type #{@table_type}" do
      type = init() |> Keyword.get(:type)

      assert type == @table_type
    end

    test "table is named? (#{@is_named_table})" do
      named_table = init() |> Keyword.get(:named_table)

      assert named_table == @is_named_table
    end

    test "returns already existing table" do
      res1 = init()
      res2 = init()

      assert res1 == res2
    end
  end

  describe "clear" do
    setup do
      create_table()

      on_exit(&delete_table_if_exists/0)
    end

    test "deletes API response KV" do
      data = :data
      insert_key_value(@response_key, data)

      assert get_value(@response_key) == data
      clear()
      assert get_value(@response_key) == :key_not_found
    end
  end

  describe "clear_key tests" do
    setup do
      create_table()

      on_exit(&delete_table_if_exists/0)
    end

    test "deletes provided key" do
      key = :key
      data = :data
      insert_key_value(key, data)

      assert get_value(key) == data
      clear_key(key)
      assert get_value(key) == :key_not_found
    end

    test "returns true if key exists" do
      key = :key
      data = :data
      insert_key_value(key, data)

      res = clear_key(key)
      assert res == true
    end

    test "returns true if key does not exist" do
      assert clear_key(:does_not_exist) == true
    end
  end

  describe "get_set_expired tests" do
    setup do
      create_table()

      on_exit(&delete_table_if_exists/0)

      %{key: :key}
    end

    test "sets key if doesn't exist", config do
      %{key: key} = config
      assert get_set_expired(key, :no_timeout, &load/0)
    end

    test "gets cached value if timeout not expired", config do
      %{key: key} = config
      res = get_set_expired(key, :no_timeout, &load/0)

      assert res == get_set_expired(key, :no_timeout, &load/0)
    end

    test "gets cached value if :no_timeout is set", config do
      %{key: key} = config
      res = get_set_expired(key, :no_timeout, &load/0)

      assert res == get_set_expired(key, :no_timeout, &load/0)
    end

    test "gets cached value if not expired", config do
      %{key: key} = config
      res = get_set_expired(key, :no_timeout, &load/0)

      assert res == get_set_expired(key, 1, &load/0)
    end

    test "gets and sets key if expired", config do
      %{key: key} = config
      res = get_set_expired(key, :no_timeout, &load/0)

      assert res != get_set_expired(key, 0, &load/0)
    end

    defp load() do
      UUID.uuid4() |> TimestampValue.new()
    end
  end

  defp insert_key_value(key, data) do
    :ets.insert(@table_key, {key, data})

    assert get_value(key) == data
    :ok
  end

  defp get_value(key) do
    case :ets.lookup(@table_key, key) do
      [] -> :key_not_found
      kv -> kv[key]
    end
  end

  defp delete_table_if_exists do
    if :ets.info(@table_key) !== @ets_undefined, do: :ets.delete(@table_key)
  end

  defp create_table do
    opts = if @is_named_table, do: [@table_type, :named_table], else: [@table_type]
    :ets.new(@table_key, opts)
  end
end

defmodule Mta.Io.Persistence.File.Test do
  use ExUnit.Case, async: false

  alias Mta.Io.Persistence

  @dir "mta_io_persistence_file_test/"
  @filename "test.txt"

  setup_all do
    out_dir = Application.get_env(:mta, :out_dir)
    dir_path = out_dir <> @dir

    case File.rmdir(dir_path) do
      :ok -> :ok
      {:error, :enoent} -> :ok
    end

    File.mkdir!(dir_path)

    on_exit(fn -> File.rm_rf!(dir_path) end)

    [dir_path: dir_path]
  end

  setup context do
    if !context.dir_path do
      raise "dir_path not defined"
    end

    on_exit(fn -> File.rm(context.dir_path <> @filename) end)

    :ok
  end

  describe "write_file" do
    test "writes data to new file at path", context do
      value = "test"

      Persistence.File.write_file(value, @dir <> @filename, false)

      written = File.read!(context.dir_path <> @filename)
      assert written == value
    end

    test "overwrites data if file exists", context do
      value = "test"

      File.write!(context.dir_path <> @filename, "old value")
      Persistence.File.write_file(value, @dir <> @filename, false)

      written = File.read!(context.dir_path <> @filename)
      assert written == value
    end
  end
end

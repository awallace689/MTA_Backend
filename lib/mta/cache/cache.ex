defmodule MTA.Cache do
  @moduledoc """
  Cached data.
  """

  @callback init() :: [{atom(), term()}]
  @callback clear_key(term()) :: true
  @callback get_set_expired(atom(), number() | :no_timeout, fun()) :: term()

  def init() do
    impl().init()
  end

  def clear_key(key) do
    impl().clear_key(key)
  end

  def get_set_expired(key, timeout_seconds, load) do
    impl().get_set_expired(key, timeout_seconds, load)
  end

  defp impl() do
    Application.get_env(:mta, :cache_client, MTA.Cache.ETS)
  end
end

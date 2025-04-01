defmodule Mta.Cache.TimestampValue do
  defstruct timestamp: nil, value: nil

  @spec new(term()) :: %__MODULE__{}
  def new(value) when not is_nil(value) do
    %__MODULE__{value: value, timestamp: DateTime.utc_now()}
  end

  @spec expired?(DateTime.t(), number(), :day | :hour | :minute | System.time_unit()) ::
          boolean()
  @doc """
  A timestamp is always expired if it is missing or time elapsed is greater than `timeout`.
  A non-`nil` timestamp is never expired if `timeout` is `:no_timeout`.
  """
  def expired?(timestamp, timeout, unit \\ :second)

  def expired?(timestamp, timeout, _)
      when is_nil(timestamp) or
             timeout == 0 do
    true
  end

  def expired?(_, :no_timeout, _), do: false

  def expired?(timestamp, timeout, unit) do
    DateTime.diff(DateTime.utc_now(), timestamp, unit) > timeout
  end
end

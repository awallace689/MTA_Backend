defmodule Mta.Constants.CacheKey do
  def feed_message(), do: :__mta_realtime_gtfs__feed_message
  def stops(), do: :__mta_realtime_gtfs__stops
end

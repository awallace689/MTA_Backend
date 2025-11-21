defmodule Mta.CLI.Test do
  use ExUnit.Case, async: true
  import ExUnit.CaptureIO
  import Mox

  alias Mta.CLI

  setup :verify_on_exit!

  describe "ellipses/2" do
    test "returns input unchanged when length is less than max_length" do
      assert CLI.ellipses("hello", 10) == "hello"
    end

    test "returns input unchanged when length equals max_length" do
      assert CLI.ellipses("hello", 5) == "hello"
    end

    test "truncates and adds ellipses when length exceeds max_length" do
      assert CLI.ellipses("hello world", 5) == "hello..."
    end

    test "handles empty string" do
      assert CLI.ellipses("", 5) == ""
    end

    test "handles single character truncation" do
      assert CLI.ellipses("abc", 1) == "a..."
    end

    test "handles unicode characters" do
      assert CLI.ellipses("héllo wörld", 5) == "héllo..."
    end

    test "handles emojis" do
      assert CLI.ellipses("🎉🎊🎈🎁🎀", 3) == "🎉🎊🎈..."
    end
  end

  describe "print_messages/1" do
    test "prints subway count for feed with vehicle entities" do
      feed_message = %TransitRealtime.FeedMessage{
        entity: [
          %TransitRealtime.FeedEntity{
            id: "1",
            vehicle: %TransitRealtime.VehiclePosition{
              trip: %TransitRealtime.TripDescriptor{trip_id: "trip1"}
            }
          },
          %TransitRealtime.FeedEntity{
            id: "2",
            vehicle: %TransitRealtime.VehiclePosition{
              trip: %TransitRealtime.TripDescriptor{trip_id: "trip2"}
            }
          }
        ],
        header: %TransitRealtime.FeedHeader{
          gtfs_realtime_version: "2.0",
          timestamp: 1234567890
        }
      }

      output =
        capture_io(fn ->
          CLI.print_messages(feed_message)
        end)

      assert output =~ "Subway Count: 2"
    end

    test "returns :ok" do
      feed_message = %TransitRealtime.FeedMessage{
        entity: [],
        header: %TransitRealtime.FeedHeader{
          gtfs_realtime_version: "2.0",
          timestamp: 1234567890
        }
      }

      assert CLI.print_messages(feed_message) == :ok
    end

    test "filters entities without vehicles" do
      feed_message = %TransitRealtime.FeedMessage{
        entity: [
          %TransitRealtime.FeedEntity{
            id: "1",
            trip_update: %TransitRealtime.TripUpdate{
              trip: %TransitRealtime.TripDescriptor{trip_id: "trip1"}
            }
          }
        ],
        header: %TransitRealtime.FeedHeader{
          gtfs_realtime_version: "2.0",
          timestamp: 1234567890
        }
      }

      output =
        capture_io(fn ->
          CLI.print_messages(feed_message)
        end)

      assert output =~ "Subway Count: 0"
    end
  end

  describe "get_latest/1" do
    test "calls api_client and returns :ok when write_files is false" do
      feed_message = %TransitRealtime.FeedMessage{
        entity: [],
        header: %TransitRealtime.FeedHeader{
          gtfs_realtime_version: "2.0",
          timestamp: 1234567890
        }
      }

      Mta.Io.Api.Mock
      |> expect(:get_feed_message_cached, fn -> feed_message end)

      capture_io(fn ->
        assert CLI.get_latest(false) == :ok
      end)
    end

    test "calls persistence_client when write_files is true" do
      feed_message = %TransitRealtime.FeedMessage{
        entity: [],
        header: %TransitRealtime.FeedHeader{
          gtfs_realtime_version: "2.0",
          timestamp: 1234567890
        }
      }

      stops = %{}

      Mta.Io.Api.Mock
      |> expect(:get_feed_message_cached, fn -> feed_message end)

      Mta.Io.Persistence.Mock
      |> expect(:write_feed_message_json, fn ^feed_message -> :ok end)
      |> expect(:write_file, fn _data, "inspect__feed_message.ex" -> :ok end)
      |> expect(:write_file, fn _data, "inspect__stops.ex" -> :ok end)

      Mta.Io.Stops.Mock
      |> expect(:read_stops_cached, fn -> stops end)

      capture_io(fn ->
        assert CLI.get_latest(true) == :ok
      end)
    end

    test "does not call persistence_client when write_files is false" do
      feed_message = %TransitRealtime.FeedMessage{
        entity: [],
        header: %TransitRealtime.FeedHeader{
          gtfs_realtime_version: "2.0",
          timestamp: 1234567890
        }
      }

      Mta.Io.Api.Mock
      |> expect(:get_feed_message_cached, fn -> feed_message end)

      capture_io(fn ->
        assert CLI.get_latest(false) == :ok
      end)
    end

    test "prints messages from feed" do
      feed_message = %TransitRealtime.FeedMessage{
        entity: [
          %TransitRealtime.FeedEntity{
            id: "1",
            vehicle: %TransitRealtime.VehiclePosition{
              trip: %TransitRealtime.TripDescriptor{trip_id: "trip1"}
            }
          }
        ],
        header: %TransitRealtime.FeedHeader{
          gtfs_realtime_version: "2.0",
          timestamp: 1234567890
        }
      }

      Mta.Io.Api.Mock
      |> expect(:get_feed_message_cached, fn -> feed_message end)

      output =
        capture_io(fn ->
          CLI.get_latest(false)
        end)

      assert output =~ "Subway Count: 1"
    end
  end
end

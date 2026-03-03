defmodule Mta.Io.Api.Http.Test do
  use ExUnit.Case, async: false
  alias Mta.Io.Api.Http

  setup {Req.Test, :verify_on_exit!}

  describe "get_feed_message" do
    @message %TransitRealtime.FeedMessage{
      entity: [],
      header: %TransitRealtime.FeedHeader{
        gtfs_realtime_version: "2.0",
        timestamp: 1_234_567_890
      }
    }

    test "calls returns decoded response" do
      protobuf_binary = Protox.encode!(@message) |> IO.iodata_to_binary()

      Req.Test.stub(Mta.Io.Api.Http, &Plug.Conn.send_resp(&1, 200, IO.iodata_to_binary(protobuf_binary)))

      assert Http.get_feed_message() == @message
    end

    test "recovers on successful retry" do
      protobuf_binary = Protox.encode!(@message) |> IO.iodata_to_binary()
      Req.Test.expect(Mta.Io.Api.Http, 2, &Plug.Conn.send_resp(&1, 500, "Internal Server Error"))
      Req.Test.expect(Mta.Io.Api.Http, 1, &Plug.Conn.send_resp(&1, 200, protobuf_binary))

      assert Http.get_feed_message() === @message
    end

    test "retries 3 times" do
      code = 500
      Req.Test.expect(Mta.Io.Api.Http, 4, &Plug.Conn.send_resp(&1, code, "Internal Server Error"))

      assert_raise Mta.Io.Api.Http.FeedMessageError, "Bad response code: HTTP #{code}", fn ->
        Http.get_feed_message()
      end
    end

    test "logs when error returned from req" do
      reason = :timeout
      Req.Test.stub(Mta.Io.Api.Http, &Req.Test.transport_error(&1, reason))

      assert_raise Mta.Io.Api.Http.FeedMessageError, "Request failed: %Req.TransportError{reason: :#{reason}}", fn ->
        Http.get_feed_message()
      end
    end
  end
end

Mox.defmock(Mta.Io.Api.Mock, for: Mta.Io.Api)
Application.put_env(:mta, :api_client, Mta.Io.Api.Mock)

Mox.defmock(Mta.Io.Persistence.Mock, for: Mta.Io.Persistence)
Application.put_env(:mta, :persistence_client, Mta.Io.Persistence.Mock)

Mox.defmock(Mta.Io.Stops.Mock, for: Mta.Io.Stops)
Application.put_env(:mta, :stops_client, Mta.Io.Stops.Mock)

ExUnit.start()

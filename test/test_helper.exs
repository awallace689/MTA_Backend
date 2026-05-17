Mox.defmock(MTA.Cache.Mock, for: MTA.Cache)
Application.put_env(:mta, :cache_client, MTA.Cache.Mock)

Mox.defmock(MTA.IO.API.Mock, for: MTA.IO.API)
Application.put_env(:mta, :api_client, MTA.IO.API.Mock)

Mox.defmock(MTA.IO.Persistence.Mock, for: MTA.IO.Persistence)
Application.put_env(:mta, :persistence_client, MTA.IO.Persistence.Mock)

Mox.defmock(MTA.IO.Stops.Mock, for: MTA.IO.Stops)
Application.put_env(:mta, :stops_client, MTA.IO.Stops.Mock)

Application.put_env(:mta, :out_dir, "./test/out/")

ExUnit.start()

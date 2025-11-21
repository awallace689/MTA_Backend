import Config

config :mta,
  api_client: Mta.Io.Api.Mock,
  persistence_client: Mta.Io.Persistence.Mock,
  stops_client: Mta.Io.Stops.Mock

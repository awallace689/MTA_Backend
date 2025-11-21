import Config

config :mta,
  api_client: Mta.Io.Api.Http,
  persistence_client: Mta.Io.Persistence.File,
  stops_client: Mta.Io.Stops.File

import_config "#{config_env()}.exs"

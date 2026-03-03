import Config

config :mta, out_dir: "./out/"

import_config "#{config_env()}.exs"

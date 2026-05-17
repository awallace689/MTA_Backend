import Config

config :mta,
  feed_message_req_options: [
    plug: {Req.Test, MTA.IO.API.HTTP},
    retry_delay: 1
  ]

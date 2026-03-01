import Config

config :mta,
  feed_message_req_options: [
    plug: {Req.Test, Mta.Io.Api.Http},
    retry_delay: 1
  ]

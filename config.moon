import config from require "lapis.config"

config "development", ->
  postgresql_url "postgres://lapis:password@127.0.0.1/mydatabase"

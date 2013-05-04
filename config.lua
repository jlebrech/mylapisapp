local config
do
  local _table_0 = require("lapis.config")
  config = _table_0.config
end
return config("development", function()
  return postgresql_url("postgres://lapis:password@127.0.0.1/mydatabase")
end)

local lapis = require("lapis")
lapis = require("lapis.console")
return lapis.serve((function()
  do
    local _parent_0 = lapis.Application
    local _base_0 = {
      ["/"] = function(self)
        return "Hello World!"
      end,
      ["/console"] = console.make()
    }
    _base_0.__index = _base_0
    if _parent_0 then
      setmetatable(_base_0, _parent_0.__base)
    end
    local _class_0 = setmetatable({
      __init = function(self, ...)
        if _parent_0 then
          return _parent_0.__init(self, ...)
        end
      end,
      __base = _base_0,
      __name = nil,
      __parent = _parent_0
    }, {
      __index = function(cls, name)
        local val = rawget(_base_0, name)
        if val == nil and _parent_0 then
          return _parent_0[name]
        else
          return val
        end
      end,
      __call = function(cls, ...)
        local _self_0 = setmetatable({}, _base_0)
        cls.__init(_self_0, ...)
        return _self_0
      end
    })
    _base_0.__class = _class_0
    if _parent_0 and _parent_0.__inherited then
      _parent_0.__inherited(_parent_0, _class_0)
    end
    return _class_0
  end
end)())

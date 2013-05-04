lapis = require "lapis"
lapis = require "lapis.console"

lapis.serve class extends lapis.Application
  "/": => "Hello World!"
  "/console": console.make!

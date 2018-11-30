customerHandler = require './requestHandlers/customer'
bikeCheckHandler = require './requestHandlers/bike-check'

start = (server) ->
  customerHandler.handle server
  bikeCheckHandler.handle server

exports = this
exports.start = start
dbHandler = require '../../../services/db/dbHandler'

handle = (server) ->
  server.get '/bikeCheck/:bikeId', (request, response, next) ->
    bikeCheck = await dbHandler.getAll 'bikeCheck', { bikeId: request.params.bikeId }
    response.send bikeCheck

exports = this
exports.handle = handle
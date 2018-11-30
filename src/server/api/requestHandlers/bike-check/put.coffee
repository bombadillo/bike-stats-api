dbHandler = require '../../../services/db/dbHandler'

handle = (server) ->
  server.put '/bikeCheck', (request, response, next) ->
    bikeCheck = request.body
    updated = await dbHandler.update 'bikeCheck', bikeCheck

    if updated
      response.send true
    else
      response.send 500

exports = this
exports.handle = handle
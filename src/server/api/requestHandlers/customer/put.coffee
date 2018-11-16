dbHandler = require '../../../services/db/dbHandler'

handle = (server) ->
  server.put '/user/:userId', (request, response, next) ->
    updated = await dbHandler.update 'user', request.body
    response.send { updated: updated }

exports = this
exports.handle = handle
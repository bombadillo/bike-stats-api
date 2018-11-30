dbHandler = require '../../../services/db/dbHandler'

handle = (server) ->
  server.post '/bikeCheck', (request, response, next) ->
    bikeCheck = request.body
    inserted = await dbHandler.insert 'bikeCheck', bikeCheck

    if inserted
      response.send true
    else
      response.send 500

exports = this
exports.handle = handle
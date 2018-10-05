dbHandler = require '../../db/dbHandler'

handle = (server) ->
    server.get '/user/:stravaId', (request, response, next) ->
        dbHandler.getOne('user', stravaId: +request.params.stravaId).then (result) ->
            response.send user: result

exports = this
exports.handle = handle
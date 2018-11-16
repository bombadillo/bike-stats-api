dbHandler = require '../../../services/db/dbHandler'

handle = (server) ->
  server.get '/user/strava/:stravaId', (request, response, next) ->
    user = await dbHandler.getOne 'user', { stravaId: +request.params.stravaId }
    response.send { user: user }

  server.get '/user', (request, response, next) ->
    users = await dbHandler.getAll 'user'
    response.send { users: users }

  server.get '/user/:id', (request, response, next) ->
    user = await dbHandler.getById 'user', request.params.id
    response.send { user: user }

exports = this
exports.handle = handle
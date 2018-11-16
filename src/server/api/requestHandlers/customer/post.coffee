userCreator = require '../../../services/user/userCreator'

handle = (server) ->
  server.post '/user', (request, response, next) ->
    try
      created = await userCreator.create(request.body)
      if created
        response.status 201
        response.send { created: created }
      else
        response.status 200
        response.send()
    catch err
      response.status 500
      response.send()
        
exports = this
exports.handle = handle
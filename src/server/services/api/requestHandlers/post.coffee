userCreator = require '../../user/userCreator'

handle = (server) ->
    server.post '/user', (request, response, next) ->
      userCreator.create(request.body)
        .then (created) ->
          if created            
            response.send created: created
          else
            response.status 409
            response.send()
        .catch (err) -> 
          response.status 500
          response.send()
        

exports = this
exports.handle = handle
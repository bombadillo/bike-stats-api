dbHandler = require '../../../services/db/dbHandler'
userBikeRetriever = require '../../../services/user/userBikeRetriever'

handle = (server) ->
  server.put '/bikeCheck', (request, response, next) ->
    bikeCheck = request.body
    bike = await userBikeRetriever.getByStravaId bikeCheck.stravaId, bikeCheck.bikeId

    if !bike
      console.log 'unable to get bike to update bike check'
      response.send 500
      return
      
    bikeCheck.distance = bike.distance
    updated = await dbHandler.update 'bikeCheck', bikeCheck

    if updated
      response.send true
    else
      response.send 500

exports = this
exports.handle = handle